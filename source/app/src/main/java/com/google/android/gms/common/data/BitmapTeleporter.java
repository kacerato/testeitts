package com.google.android.gms.common.data;

import F0.l;
import G0.A;
import G0.F;
import I0.c;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

@F
@C0.a
@c.a(creator = "BitmapTeleporterCreator")
public class BitmapTeleporter extends I0.a implements ReflectedParcelable {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new l();

    @c.h(id = 1)
    public final int f61306b;

    @Nullable
    @c.InterfaceC0186c(id = 2)
    public ParcelFileDescriptor f61307c;

    @c.InterfaceC0186c(id = 3)
    public final int f61308d;

    @Nullable
    public Bitmap f61309e;

    public boolean f61310f;

    public File f61311g;

    @c.b
    public BitmapTeleporter(@c.e(id = 1) int i10, @c.e(id = 2) ParcelFileDescriptor parcelFileDescriptor, @c.e(id = 3) int i11) {
        this.f61306b = i10;
        this.f61307c = parcelFileDescriptor;
        this.f61308d = i11;
        this.f61309e = null;
        this.f61310f = false;
    }

    public static final void t(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e10) {
            Log.w("BitmapTeleporter", "Could not close stream", e10);
        }
    }

    @Nullable
    @C0.a
    public Bitmap n() {
        if (!this.f61310f) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) A.r(this.f61307c)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    t(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.f61309e = createBitmap;
                    this.f61310f = true;
                } catch (IOException e10) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e10);
                }
            } catch (Throwable th2) {
                t(dataInputStream);
                throw th2;
            }
        }
        return this.f61309e;
    }

    @C0.a
    public void p(@NonNull File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.f61311g = file;
    }

    @C0.a
    public void release() {
        if (this.f61310f) {
            return;
        }
        try {
            ((ParcelFileDescriptor) A.r(this.f61307c)).close();
        } catch (IOException e10) {
            Log.w("BitmapTeleporter", "Could not close PFD", e10);
        }
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        if (this.f61307c == null) {
            Bitmap bitmap = (Bitmap) A.r(this.f61309e);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            File file = this.f61311g;
            if (file == null) {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
            try {
                File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f61307c = ParcelFileDescriptor.open(createTempFile, 268435456);
                    createTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(array.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(array);
                        } catch (IOException e10) {
                            throw new IllegalStateException("Could not write into unlinked file", e10);
                        }
                    } finally {
                        t(dataOutputStream);
                    }
                } catch (FileNotFoundException unused) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e11) {
                throw new IllegalStateException("Could not create temporary file", e11);
            }
        }
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61306b);
        I0.b.S(parcel, 2, this.f61307c, i10 | 1, false);
        I0.b.F(parcel, 3, this.f61308d);
        I0.b.b(parcel, a10);
        this.f61307c = null;
    }

    @C0.a
    public BitmapTeleporter(@NonNull Bitmap bitmap) {
        this.f61306b = 1;
        this.f61307c = null;
        this.f61308d = 0;
        this.f61309e = bitmap;
        this.f61310f = true;
    }
}
