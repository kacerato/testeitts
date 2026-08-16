package oh;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

public class j1 {
    public static int a(InputStream inputStream) {
        if (inputStream instanceof g1) {
            return ((g1) inputStream).c();
        }
        if (inputStream instanceof r) {
            return ((r) inputStream).g();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        long maxMemory = Runtime.getRuntime().maxMemory();
        if (maxMemory > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) maxMemory;
    }
}
