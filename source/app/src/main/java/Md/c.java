package md;

import android.media.MediaMetadataRetriever;
import java.io.File;

public class c {
    public static int[] a(File videoFilePath) {
        return b(videoFilePath.getAbsolutePath());
    }

    public static int[] b(String videoFilePath) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(videoFilePath);
        return new int[]{Integer.parseInt(mediaMetadataRetriever.extractMetadata(18)), Integer.parseInt(mediaMetadataRetriever.extractMetadata(19))};
    }
}
