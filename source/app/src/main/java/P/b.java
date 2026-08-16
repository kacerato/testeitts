package P;

import B.a;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class b implements a.InterfaceC0021a {

    public final F.e f20567a;

    @Nullable
    public final F.b f20568b;

    public b(F.e eVar) {
        this(eVar, null);
    }

    @Override
    @NonNull
    public byte[] a(int i10) {
        F.b bVar = this.f20568b;
        return bVar == null ? new byte[i10] : (byte[]) bVar.c(i10, byte[].class);
    }

    @Override
    @NonNull
    public Bitmap b(int i10, int i11, @NonNull Bitmap.Config config) {
        return this.f20567a.g(i10, i11, config);
    }

    @Override
    public void c(@NonNull Bitmap bitmap) {
        this.f20567a.d(bitmap);
    }

    @Override
    @NonNull
    public int[] d(int i10) {
        F.b bVar = this.f20568b;
        return bVar == null ? new int[i10] : (int[]) bVar.c(i10, int[].class);
    }

    @Override
    public void e(@NonNull byte[] bArr) {
        F.b bVar = this.f20568b;
        if (bVar == null) {
            return;
        }
        bVar.put(bArr);
    }

    @Override
    public void f(@NonNull int[] iArr) {
        F.b bVar = this.f20568b;
        if (bVar == null) {
            return;
        }
        bVar.put(iArr);
    }

    public b(F.e eVar, @Nullable F.b bVar) {
        this.f20567a = eVar;
        this.f20568b = bVar;
    }
}
