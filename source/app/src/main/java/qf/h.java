package qf;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.G;
import pf.H;
import pf.y0;

@t0({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/SerializedCollection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
public final class h implements Externalizable {

    @NotNull
    public static final a f107891d = new a(null);

    public static final long f107892e = 0;

    public static final int f107893f = 0;

    public static final int f107894g = 1;

    @NotNull
    public Collection<?> f107895b;

    public final int f107896c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public h(@NotNull Collection<?> collection, int i10) {
        M.p(collection, "collection");
        this.f107895b = collection;
        this.f107896c = i10;
    }

    public final Object a() {
        return this.f107895b;
    }

    @Override
    public void readExternal(@NotNull ObjectInput input) {
        List b10;
        M.p(input, "input");
        byte readByte = input.readByte();
        int i10 = readByte & 1;
        if ((readByte & (-2)) != 0) {
            throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte) + '.');
        }
        int readInt = input.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        int i11 = 0;
        if (i10 == 0) {
            List k10 = G.k(readInt);
            while (i11 < readInt) {
                k10.add(input.readObject());
                i11++;
            }
            b10 = G.b(k10);
        } else {
            if (i10 != 1) {
                throw new InvalidObjectException("Unsupported collection type tag: " + i10 + '.');
            }
            Set e10 = y0.e(readInt);
            while (i11 < readInt) {
                e10.add(input.readObject());
                i11++;
            }
            b10 = y0.a(e10);
        }
        this.f107895b = b10;
    }

    @Override
    public void writeExternal(@NotNull ObjectOutput output) {
        M.p(output, "output");
        output.writeByte(this.f107896c);
        output.writeInt(this.f107895b.size());
        Iterator<?> it = this.f107895b.iterator();
        while (it.hasNext()) {
            output.writeObject(it.next());
        }
    }

    public h() {
        this(H.J(), 0);
    }
}
