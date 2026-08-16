package B2;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@k
@I2.j
public abstract class AbstractC2342b extends AbstractC2343c {

    public static final long f1410c = 0;

    public final q[] f1411b;

    public class a implements r {

        public final r[] f1412a;

        public a(r[] rVarArr) {
            this.f1412a = rVarArr;
        }

        @Override
        public p h() {
            return AbstractC2342b.this.m(this.f1412a);
        }

        @Override
        public <T> r i(@F T t10, n<? super T> nVar) {
            for (r rVar : this.f1412a) {
                rVar.i(t10, nVar);
            }
            return this;
        }

        @Override
        public r a(byte b10) {
            for (r rVar : this.f1412a) {
                rVar.a(b10);
            }
            return this;
        }

        @Override
        public r b(byte[] bArr) {
            for (r rVar : this.f1412a) {
                rVar.b(bArr);
            }
            return this;
        }

        @Override
        public r c(char c10) {
            for (r rVar : this.f1412a) {
                rVar.c(c10);
            }
            return this;
        }

        @Override
        public r d(CharSequence charSequence) {
            for (r rVar : this.f1412a) {
                rVar.d(charSequence);
            }
            return this;
        }

        @Override
        public r e(byte[] bArr, int i10, int i11) {
            for (r rVar : this.f1412a) {
                rVar.e(bArr, i10, i11);
            }
            return this;
        }

        @Override
        public r f(ByteBuffer byteBuffer) {
            int position = byteBuffer.position();
            for (r rVar : this.f1412a) {
                w.d(byteBuffer, position);
                rVar.f(byteBuffer);
            }
            return this;
        }

        @Override
        public r g(CharSequence charSequence, Charset charset) {
            for (r rVar : this.f1412a) {
                rVar.g(charSequence, charset);
            }
            return this;
        }

        @Override
        public r putBoolean(boolean z10) {
            for (r rVar : this.f1412a) {
                rVar.putBoolean(z10);
            }
            return this;
        }

        @Override
        public r putDouble(double d10) {
            for (r rVar : this.f1412a) {
                rVar.putDouble(d10);
            }
            return this;
        }

        @Override
        public r putFloat(float f10) {
            for (r rVar : this.f1412a) {
                rVar.putFloat(f10);
            }
            return this;
        }

        @Override
        public r putInt(int i10) {
            for (r rVar : this.f1412a) {
                rVar.putInt(i10);
            }
            return this;
        }

        @Override
        public r putLong(long j10) {
            for (r rVar : this.f1412a) {
                rVar.putLong(j10);
            }
            return this;
        }

        @Override
        public r putShort(short s10) {
            for (r rVar : this.f1412a) {
                rVar.putShort(s10);
            }
            return this;
        }
    }

    public AbstractC2342b(q... qVarArr) {
        for (q qVar : qVarArr) {
            w2.H.E(qVar);
        }
        this.f1411b = qVarArr;
    }

    @Override
    public r a(int i10) {
        w2.H.d(i10 >= 0);
        int length = this.f1411b.length;
        r[] rVarArr = new r[length];
        for (int i11 = 0; i11 < length; i11++) {
            rVarArr[i11] = this.f1411b[i11].a(i10);
        }
        return l(rVarArr);
    }

    @Override
    public r i() {
        int length = this.f1411b.length;
        r[] rVarArr = new r[length];
        for (int i10 = 0; i10 < length; i10++) {
            rVarArr[i10] = this.f1411b[i10].i();
        }
        return l(rVarArr);
    }

    public final r l(r[] rVarArr) {
        return new a(rVarArr);
    }

    public abstract p m(r[] rVarArr);
}
