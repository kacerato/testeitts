package D;

import D.e;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;

public final class m implements e<ParcelFileDescriptor> {

    public final b f4528a;

    @RequiresApi(21)
    public static final class a implements e.a<ParcelFileDescriptor> {
        @Override
        @NonNull
        public Class<ParcelFileDescriptor> a() {
            return ParcelFileDescriptor.class;
        }

        @Override
        @NonNull
        public e<ParcelFileDescriptor> b(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            return new m(parcelFileDescriptor);
        }
    }

    @RequiresApi(21)
    public static final class b {

        public final ParcelFileDescriptor f4529a;

        public b(ParcelFileDescriptor parcelFileDescriptor) {
            this.f4529a = parcelFileDescriptor;
        }

        public ParcelFileDescriptor a() throws IOException {
            try {
                Os.lseek(this.f4529a.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f4529a;
            } catch (ErrnoException e10) {
                throw new IOException(e10);
            }
        }
    }

    @RequiresApi(21)
    public m(ParcelFileDescriptor parcelFileDescriptor) {
        this.f4528a = new b(parcelFileDescriptor);
    }

    public static boolean b() {
        return true;
    }

    @Override
    @NonNull
    @RequiresApi(21)
    public ParcelFileDescriptor a() throws IOException {
        return this.f4528a.a();
    }

    @Override
    public void cleanup() {
    }
}
