package md;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;

public class C14216a {

    public static final int f96954a = 1048576;

    public static final String f96955b = "AudioExtractorDecoder";

    @SuppressLint({"NewApi"})
    public static void a(String srcPath, String dstPath, int startMs, int endMs, boolean useAudio, boolean useVideo) throws IOException {
        MediaMuxer mediaMuxer;
        long j10;
        int i10;
        int integer;
        if (!useAudio && !useVideo) {
            throw new IllegalArgumentException("useAudio e useVideo est\u00e3o false. Nada para muxar.");
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaExtractor.setDataSource(srcPath);
            int trackCount = mediaExtractor.getTrackCount();
            if (trackCount <= 0) {
                throw new IOException("Arquivo sem tracks: " + srcPath);
            }
            boolean z10 = false;
            boolean z11 = false;
            for (int i11 = 0; i11 < trackCount; i11++) {
                String string = mediaExtractor.getTrackFormat(i11).getString(MediaFormat.KEY_MIME);
                if (string != null) {
                    if (string.startsWith("audio/")) {
                        z10 = true;
                    }
                    if (string.startsWith("video/")) {
                        z11 = true;
                    }
                }
            }
            if (useAudio && !z10) {
                Log.w(f96955b, "Source has no audio track.");
                try {
                    mediaExtractor.release();
                } catch (Exception unused) {
                }
                try {
                    mediaMetadataRetriever.release();
                    return;
                } catch (Exception unused2) {
                    return;
                }
            }
            if (useVideo && !z11) {
                Log.w(f96955b, "Source has no video track.");
                try {
                    mediaExtractor.release();
                } catch (Exception unused3) {
                }
                try {
                    mediaMetadataRetriever.release();
                    return;
                } catch (Exception unused4) {
                    return;
                }
            }
            File file = new File(dstPath);
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("Failed to create output dir: " + ((Object) parentFile));
            }
            if (file.exists() && !file.delete()) {
                throw new IOException("Failed to delete existing output file: " + dstPath);
            }
            MediaMuxer mediaMuxer2 = new MediaMuxer(dstPath, 0);
            if (useVideo) {
                try {
                    mediaMetadataRetriever.setDataSource(srcPath);
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
                    if (extractMetadata != null) {
                        try {
                            int parseInt = Integer.parseInt(extractMetadata);
                            if (parseInt >= 0) {
                                mediaMuxer2.setOrientationHint(parseInt);
                            }
                        } catch (NumberFormatException unused5) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    mediaMuxer = mediaMuxer2;
                    try {
                        mediaExtractor.release();
                    } catch (Exception unused6) {
                    }
                    try {
                        mediaMetadataRetriever.release();
                    } catch (Exception unused7) {
                    }
                    if (mediaMuxer == null) {
                        throw th;
                    }
                    try {
                        mediaMuxer.release();
                        throw th;
                    } catch (Exception unused8) {
                        throw th;
                    }
                }
            }
            HashMap hashMap = new HashMap(trackCount);
            int i12 = -1;
            int i13 = 0;
            while (i13 < trackCount) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i13);
                String string2 = trackFormat.getString(MediaFormat.KEY_MIME);
                if (string2 != null) {
                    boolean z12 = string2.startsWith("audio/") && useAudio;
                    if (string2.startsWith("video/") && useVideo) {
                        z12 = true;
                    }
                    if (z12) {
                        mediaExtractor.selectTrack(i13);
                        i10 = trackCount;
                        hashMap.put(Integer.valueOf(i13), Integer.valueOf(mediaMuxer2.addTrack(trackFormat)));
                        if (trackFormat.containsKey(MediaFormat.KEY_MAX_INPUT_SIZE) && (integer = trackFormat.getInteger(MediaFormat.KEY_MAX_INPUT_SIZE)) > i12) {
                            i12 = integer;
                        }
                        i13++;
                        trackCount = i10;
                    }
                }
                i10 = trackCount;
                i13++;
                trackCount = i10;
            }
            if (hashMap.isEmpty()) {
                throw new IllegalStateException("No tracks added to muxer. Check source tracks and useAudio/useVideo.");
            }
            if (i12 < 0) {
                i12 = 1048576;
            }
            long j11 = 0;
            if (startMs > 0) {
                mediaExtractor.seekTo(startMs * 1000, 2);
            } else {
                mediaExtractor.seekTo(0L, 2);
            }
            long sampleTime = mediaExtractor.getSampleTime();
            if (sampleTime < 0) {
                sampleTime = 0;
            }
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i12);
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            mediaMuxer2.start();
            long j12 = endMs > 0 ? endMs * 1000 : Long.MAX_VALUE;
            while (true) {
                allocateDirect.clear();
                int readSampleData = mediaExtractor.readSampleData(allocateDirect, 0);
                if (readSampleData < 0) {
                    Log.d(f96955b, "Saw input EOS.");
                    break;
                }
                Integer num = (Integer) hashMap.get(Integer.valueOf(mediaExtractor.getSampleTrackIndex()));
                long sampleTime2 = mediaExtractor.getSampleTime();
                if (sampleTime2 < j11) {
                    mediaExtractor.advance();
                } else {
                    if (sampleTime2 > j12) {
                        Log.d(f96955b, "Over trim end time, stopping.");
                        break;
                    }
                    if (num != null) {
                        bufferInfo.offset = 0;
                        bufferInfo.size = readSampleData;
                        bufferInfo.flags = mediaExtractor.getSampleFlags();
                        long j13 = sampleTime2 - sampleTime;
                        j10 = 0;
                        bufferInfo.presentationTimeUs = j13 < 0 ? 0L : j13;
                        mediaMuxer2.writeSampleData(num.intValue(), allocateDirect, bufferInfo);
                    } else {
                        j10 = j11;
                    }
                    mediaExtractor.advance();
                    j11 = j10;
                }
            }
            mediaMuxer2.stop();
            try {
                mediaExtractor.release();
            } catch (Exception unused9) {
            }
            try {
                mediaMetadataRetriever.release();
            } catch (Exception unused10) {
            }
            try {
                mediaMuxer2.release();
            } catch (Exception unused11) {
            }
        } catch (Throwable th3) {
            th = th3;
            mediaMuxer = null;
        }
    }
}
