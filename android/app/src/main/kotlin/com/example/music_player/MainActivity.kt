package com.example.music_player
import io.flutter.embedding.android.FlutterActivity
import android.content.ContentResolver
import android.database.Cursor
import android.os.Bundle
import android.provider.MediaStore
import androidx.annotation.NonNull
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.example.music_player/media"

    override fun configureFlutterEngine(@NonNull flutterEngine: io.flutter.embedding.engine.FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getAudioFiles") {
                val audioFiles = getAudioFiles()
                if (audioFiles != null) {
                    result.success(audioFiles)
                } else {
                    result.error("UNAVAILABLE", "Audio files not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getAudioFiles(): List<String>? {
        val audioList = mutableListOf<String>()
        val contentResolver: ContentResolver = contentResolver
        val uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        val projection = arrayOf(
            MediaStore.Audio.Media.DISPLAY_NAME,
            MediaStore.Audio.Media.DATA  
    )

    val cursor: Cursor? = contentResolver.query(uri, projection, null, null, null)
    cursor?.use {
        val nameIndex = cursor.getColumnIndexOrThrow(MediaStore.Audio.Media.DISPLAY_NAME)
        val dataIndex = cursor.getColumnIndexOrThrow(MediaStore.Audio.Media.DATA)
        while (cursor.moveToNext()) {
            val name = cursor.getString(nameIndex)
            val path = cursor.getString(dataIndex)
            audioList.add(mapOf("name" to name, "path" to path))
        }
    }
    return audioList
    }
}

