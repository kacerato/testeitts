package b3;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

public class C3842d {

    public static final String f32920c = "CrossProcessLock";

    public final FileChannel f32921a;

    public final FileLock f32922b;

    public C3842d(FileChannel fileChannel, FileLock fileLock) {
        this.f32921a = fileChannel;
        this.f32922b = fileLock;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C3842d a(Context context, String str) {
        FileChannel fileChannel;
        FileLock fileLock;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException | Error | OverlappingFileLockException e10) {
                e = e10;
                fileLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e11) {
            e = e11;
            fileChannel = null;
            fileLock = null;
        }
        try {
            return new C3842d(fileChannel, fileLock);
        } catch (IOException e12) {
            e = e12;
            Log.e(f32920c, "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (IOException unused) {
                }
            }
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        } catch (Error e13) {
            e = e13;
            Log.e(f32920c, "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
            }
            if (fileChannel != null) {
            }
            return null;
        } catch (OverlappingFileLockException e14) {
            e = e14;
            Log.e(f32920c, "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
            }
            if (fileChannel != null) {
            }
            return null;
        }
    }

    public void b() {
        try {
            this.f32922b.release();
            this.f32921a.close();
        } catch (IOException e10) {
            Log.e(f32920c, "encountered error while releasing, ignoring", e10);
        }
    }
}
