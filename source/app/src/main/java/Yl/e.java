package Yl;

import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.jme3.audio.openal.AL;
import com.tonyodev.fetch2.util.FetchDefaults;
import dalvik.bytecode.Opcodes;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import mk.C14320x;

public class e implements i {

    public static final int f30627b = 3;

    public static final int[] f30628c = {4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, Opcodes.OP_IPUT_SHORT_JUMBO, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, Opcodes.OP_SGET_BOOLEAN_JUMBO, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, C14320x.f97443f, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, Opcodes.OP_SGET_SHORT_JUMBO, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, AL.AL_PENDING, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, Opcodes.OP_SPUT_CHAR_JUMBO, 8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, EditorActivity.f69786M, 9007, 9011, 9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199, 9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377, 9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533, 9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733, 9739, 9743, 9749, 9767, 9769, 9781, 9787, 9791, 9803, 9811, 9817, 9829, 9833, 9839, 9851, 9857, 9859, 9871, 9883, 9887, 9901, 9907, 9923, 9929, 9931, 9941, 9949, 9967, 9973};

    public static final List f30629d = new ArrayList();

    public int[] f30630a;

    public static class b implements Callable<h> {

        public h f30631b;

        public h f30632c;

        public b(h hVar, h hVar2) {
            this.f30631b = hVar;
            this.f30632c = hVar2;
        }

        @Override
        public h call() {
            return h.a(this.f30631b, this.f30632c);
        }
    }

    public class c implements Callable<h> {

        public int f30633b;

        public c(int i10) {
            this.f30633b = i10;
        }

        @Override
        public h call() {
            return e.this.J(this.f30633b);
        }
    }

    public static class d {

        public int f30635a;

        public BigInteger f30636b;

        public d() {
            this.f30635a = 0;
        }

        public BigInteger a() {
            BigInteger nextProbablePrime;
            if (this.f30635a < e.f30629d.size()) {
                List list = e.f30629d;
                int i10 = this.f30635a;
                this.f30635a = i10 + 1;
                nextProbablePrime = (BigInteger) list.get(i10);
            } else {
                nextProbablePrime = this.f30636b.nextProbablePrime();
            }
            this.f30636b = nextProbablePrime;
            return this.f30636b;
        }
    }

    static {
        int i10 = 0;
        while (true) {
            if (i10 == f30628c.length) {
                return;
            }
            f30629d.add(BigInteger.valueOf(r1[i10]));
            i10++;
        }
    }

    public e(int i10) {
        this.f30630a = new int[i10];
    }

    public static e s(InputStream inputStream, int i10, int i11) throws IOException {
        return new e(Zl.a.d(inputStream, i10, i11));
    }

    public static e t(byte[] bArr, int i10, int i11) {
        return new e(Zl.a.e(bArr, i10, i11));
    }

    public static e u(byte[] bArr, int i10) {
        return new e(Zl.a.a(bArr, i10));
    }

    public static e v(InputStream inputStream, int i10) throws IOException {
        return new e(Zl.a.b(inputStream, i10));
    }

    public static e w(byte[] bArr, int i10) {
        return new e(Zl.a.c(bArr, i10));
    }

    public final e A(e eVar, int i10) {
        int i11 = 2;
        if (!Zl.b.d() || i10 != 2048) {
            while (i11 < i10) {
                i11 *= 2;
                int[] iArr = eVar.f30630a;
                e eVar2 = new e(org.bouncycastle.util.a.S(iArr, iArr.length));
                eVar2.F(i11);
                eVar2.S(e(eVar, i11).e(eVar, i11), i11);
                eVar = eVar2;
            }
            return eVar;
        }
        f fVar = new f(this);
        f fVar2 = new f(eVar);
        while (i11 < i10) {
            i11 *= 2;
            f fVar3 = (f) fVar2.clone();
            int i12 = i11 - 1;
            fVar3.c(i12);
            fVar3.f(fVar.b(fVar2).b(fVar2), i12);
            fVar2 = fVar3;
        }
        return fVar2.g();
    }

    public void B() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return;
            }
            int i11 = iArr[i10] % 3;
            iArr[i10] = i11;
            if (i11 > 1) {
                iArr[i10] = i11 - 3;
            }
            int i12 = iArr[i10];
            if (i12 < -1) {
                iArr[i10] = i12 + 3;
            }
            i10++;
        }
    }

    public void C(int i10) {
        int i11;
        z(i10);
        for (int i12 = 0; i12 < this.f30630a.length; i12++) {
            while (true) {
                int[] iArr = this.f30630a;
                int i13 = iArr[i12];
                i11 = i10 / 2;
                if (i13 >= i11) {
                    break;
                } else {
                    iArr[i12] = i13 + i10;
                }
            }
            while (true) {
                int[] iArr2 = this.f30630a;
                int i14 = iArr2[i12];
                if (i14 >= i11) {
                    iArr2[i12] = i14 - i10;
                }
            }
        }
    }

    public void D(int i10) {
        z(i10);
        o(i10);
    }

    public void E(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 >= iArr.length) {
                return;
            }
            iArr[i11] = iArr[i11] * i10;
            i11++;
        }
    }

    public final void F(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 >= iArr.length) {
                return;
            }
            int i12 = iArr[i11] * 2;
            iArr[i11] = i12;
            iArr[i11] = i12 % i10;
            i11++;
        }
    }

    public void G(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 >= iArr.length) {
                return;
            }
            int i12 = iArr[i11] * 3;
            iArr[i11] = i12;
            iArr[i11] = i12 % i10;
            i11++;
        }
    }

    public final e H(e eVar) {
        int[] iArr = this.f30630a;
        int[] iArr2 = eVar.f30630a;
        int length = iArr2.length;
        int i10 = 0;
        if (length <= 32) {
            int i11 = (length * 2) - 1;
            e eVar2 = new e(new int[i11]);
            for (int i12 = 0; i12 < i11; i12++) {
                for (int max = Math.max(0, (i12 - length) + 1); max <= Math.min(i12, length - 1); max++) {
                    int[] iArr3 = eVar2.f30630a;
                    iArr3[i12] = iArr3[i12] + (iArr2[max] * iArr[i12 - max]);
                }
            }
            return eVar2;
        }
        int i13 = length / 2;
        e eVar3 = new e(org.bouncycastle.util.a.S(iArr, i13));
        e eVar4 = new e(org.bouncycastle.util.a.Z(iArr, i13, length));
        e eVar5 = new e(org.bouncycastle.util.a.S(iArr2, i13));
        e eVar6 = new e(org.bouncycastle.util.a.Z(iArr2, i13, length));
        e eVar7 = (e) eVar3.clone();
        eVar7.h(eVar4);
        e eVar8 = (e) eVar5.clone();
        eVar8.h(eVar6);
        e H10 = eVar3.H(eVar5);
        e H11 = eVar4.H(eVar6);
        e H12 = eVar7.H(eVar8);
        H12.R(H10);
        H12.R(H11);
        e eVar9 = new e((length * 2) - 1);
        int i14 = 0;
        while (true) {
            int[] iArr4 = H10.f30630a;
            if (i14 >= iArr4.length) {
                break;
            }
            eVar9.f30630a[i14] = iArr4[i14];
            i14++;
        }
        int i15 = 0;
        while (true) {
            int[] iArr5 = H12.f30630a;
            if (i15 >= iArr5.length) {
                break;
            }
            int[] iArr6 = eVar9.f30630a;
            int i16 = i13 + i15;
            iArr6[i16] = iArr6[i16] + iArr5[i15];
            i15++;
        }
        while (true) {
            int[] iArr7 = H11.f30630a;
            if (i10 >= iArr7.length) {
                return eVar9;
            }
            int[] iArr8 = eVar9.f30630a;
            int i17 = (i13 * 2) + i10;
            iArr8[i17] = iArr8[i17] + iArr7[i10];
            i10++;
        }
    }

    public final void I(e eVar, int i10, int i11, int i12) {
        int length = this.f30630a.length;
        for (int i13 = i11; i13 < length; i13++) {
            int[] iArr = this.f30630a;
            iArr[i13] = (iArr[i13] - (eVar.f30630a[i13 - i11] * i10)) % i12;
        }
    }

    public h J(int i10) {
        int[] iArr = this.f30630a;
        int[] S10 = org.bouncycastle.util.a.S(iArr, iArr.length + 1);
        e eVar = new e(S10);
        int length = S10.length;
        e eVar2 = new e(length);
        int[] iArr2 = eVar2.f30630a;
        iArr2[0] = -1;
        int i11 = length - 1;
        iArr2[i11] = 1;
        e eVar3 = new e(eVar.f30630a);
        e eVar4 = new e(length);
        e eVar5 = new e(length);
        eVar5.f30630a[0] = 1;
        int i12 = 1;
        int i13 = i11;
        int m10 = eVar3.m();
        e eVar6 = eVar4;
        e eVar7 = eVar5;
        int i14 = i13;
        e eVar8 = eVar2;
        e eVar9 = eVar3;
        while (m10 > 0) {
            int c10 = (Zl.b.c(eVar9.f30630a[m10], i10) * eVar8.f30630a[i14]) % i10;
            int i15 = i14 - m10;
            eVar8.I(eVar9, c10, i15, i10);
            eVar6.I(eVar7, c10, i15, i10);
            i14 = eVar8.m();
            if (i14 < m10) {
                i12 = (i12 * Zl.b.e(eVar9.f30630a[m10], i13 - i14, i10)) % i10;
                if (i13 % 2 == 1 && m10 % 2 == 1) {
                    i12 = (-i12) % i10;
                }
                i13 = m10;
                m10 = i14;
                i14 = i13;
                e eVar10 = eVar7;
                eVar7 = eVar6;
                eVar6 = eVar10;
                e eVar11 = eVar8;
                eVar8 = eVar9;
                eVar9 = eVar11;
            }
        }
        int e10 = (i12 * Zl.b.e(eVar9.f30630a[0], i14, i10)) % i10;
        eVar7.E(Zl.b.c(eVar9.f30630a[0], i10));
        eVar7.z(i10);
        eVar7.E(e10);
        eVar7.z(i10);
        int[] iArr3 = eVar7.f30630a;
        eVar7.f30630a = org.bouncycastle.util.a.S(iArr3, iArr3.length - 1);
        return new h(new Yl.b(eVar7), BigInteger.valueOf(e10), BigInteger.valueOf(i10));
    }

    public k K() {
        BigInteger multiply;
        BigInteger mod;
        int length = this.f30630a.length;
        LinkedList linkedList = new LinkedList();
        BigInteger bigInteger = Yl.c.f30625b;
        d dVar = new d();
        BigInteger bigInteger2 = bigInteger;
        int i10 = 1;
        while (true) {
            BigInteger a10 = dVar.a();
            h J10 = J(a10.intValue());
            linkedList.add(J10);
            multiply = bigInteger.multiply(a10);
            Xl.a a11 = Xl.a.a(a10, bigInteger);
            mod = bigInteger2.multiply(a11.f29647a.multiply(a10)).add(J10.f30646b.multiply(a11.f29648b.multiply(bigInteger))).mod(multiply);
            BigInteger divide = multiply.divide(BigInteger.valueOf(2L));
            BigInteger negate = divide.negate();
            if (mod.compareTo(divide) > 0) {
                mod = mod.subtract(multiply);
            } else if (mod.compareTo(negate) < 0) {
                mod = mod.add(multiply);
            }
            if (mod.equals(bigInteger2)) {
                i10++;
                if (i10 >= 3) {
                    break;
                }
            } else {
                i10 = 1;
            }
            bigInteger2 = mod;
            bigInteger = multiply;
        }
        while (linkedList.size() > 1) {
            linkedList.addLast(h.a((h) linkedList.removeFirst(), (h) linkedList.removeFirst()));
        }
        Yl.b bVar = ((h) linkedList.getFirst()).f30645a;
        BigInteger divide2 = multiply.divide(BigInteger.valueOf(2L));
        BigInteger negate2 = divide2.negate();
        if (mod.compareTo(divide2) > 0) {
            mod = mod.subtract(multiply);
        }
        if (mod.compareTo(negate2) < 0) {
            mod = mod.add(multiply);
        }
        for (int i11 = 0; i11 < length; i11++) {
            BigInteger bigInteger3 = bVar.f30623a[i11];
            if (bigInteger3.compareTo(divide2) > 0) {
                bVar.f30623a[i11] = bigInteger3.subtract(multiply);
            }
            if (bigInteger3.compareTo(negate2) < 0) {
                bVar.f30623a[i11] = bigInteger3.add(multiply);
            }
        }
        return new k(bVar, mod);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008d, code lost:
    
        r10 = (Yl.h) r1.get();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public k L() {
        h hVar;
        Object[] objArr;
        int length = this.f30630a.length;
        BigInteger multiply = P().pow((length + 1) / 2).multiply(BigInteger.valueOf(2L).pow((m() + 1) / 2)).multiply(BigInteger.valueOf(2L));
        BigInteger valueOf = BigInteger.valueOf(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
        BigInteger bigInteger = Yl.c.f30625b;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Iterator it = f30629d.iterator();
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
        while (true) {
            hVar = null;
            objArr = 0;
            Object[] objArr2 = 0;
            if (bigInteger.compareTo(multiply) >= 0) {
                break;
            }
            valueOf = it.hasNext() ? (BigInteger) it.next() : valueOf.nextProbablePrime();
            linkedBlockingQueue.add(newFixedThreadPool.submit(new c(valueOf.intValue())));
            bigInteger = bigInteger.multiply(valueOf);
        }
        while (true) {
            if (linkedBlockingQueue.isEmpty()) {
                break;
            }
            try {
                Future future = (Future) linkedBlockingQueue.take();
                Future future2 = (Future) linkedBlockingQueue.poll();
                if (future2 == null) {
                    break;
                }
                linkedBlockingQueue.add(newFixedThreadPool.submit(new b((h) future.get(), (h) future2.get())));
            } catch (Exception e10) {
                throw new IllegalStateException(e10.toString());
            }
        }
        newFixedThreadPool.shutdown();
        BigInteger bigInteger2 = hVar.f30646b;
        Yl.b bVar = hVar.f30645a;
        BigInteger divide = bigInteger.divide(BigInteger.valueOf(2L));
        BigInteger negate = divide.negate();
        if (bigInteger2.compareTo(divide) > 0) {
            bigInteger2 = bigInteger2.subtract(bigInteger);
        }
        if (bigInteger2.compareTo(negate) < 0) {
            bigInteger2 = bigInteger2.add(bigInteger);
        }
        for (int i10 = 0; i10 < length; i10++) {
            BigInteger bigInteger3 = bVar.f30623a[i10];
            if (bigInteger3.compareTo(divide) > 0) {
                bVar.f30623a[i10] = bigInteger3.subtract(bigInteger);
            }
            if (bigInteger3.compareTo(negate) < 0) {
                bVar.f30623a[i10] = bigInteger3.add(bigInteger);
            }
        }
        return new k(bVar, bigInteger2);
    }

    public void M() {
        int[] iArr = this.f30630a;
        int i10 = iArr[iArr.length - 1];
        for (int length = iArr.length - 1; length > 0; length--) {
            int[] iArr2 = this.f30630a;
            iArr2[length] = iArr2[length - 1];
        }
        this.f30630a[0] = i10;
    }

    public void N(int i10) {
        C(i10);
        int[] s10 = org.bouncycastle.util.a.s(this.f30630a);
        O(s10);
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < s10.length - 1) {
            int i14 = i11 + 1;
            int i15 = s10[i14];
            int i16 = s10[i11];
            int i17 = i15 - i16;
            if (i17 > i12) {
                i13 = i16;
                i12 = i17;
            }
            i11 = i14;
        }
        int i18 = s10[0];
        int i19 = s10[s10.length - 1];
        Q((i10 - i19) + i18 > i12 ? (i19 + i18) / 2 : i13 + (i12 / 2) + (i10 / 2));
    }

    public final void O(int[] iArr) {
        boolean z10;
        for (boolean z11 = true; z11; z11 = z10) {
            int i10 = 0;
            z10 = false;
            while (i10 != iArr.length - 1) {
                int i11 = iArr[i10];
                int i12 = i10 + 1;
                int i13 = iArr[i12];
                if (i11 > i13) {
                    iArr[i10] = i13;
                    iArr[i12] = i11;
                    z10 = true;
                }
                i10 = i12;
            }
        }
    }

    public final BigInteger P() {
        BigInteger bigInteger = Yl.c.f30624a;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return bigInteger;
            }
            int i11 = iArr[i10];
            bigInteger = bigInteger.add(BigInteger.valueOf(i11 * i11));
            i10++;
        }
    }

    public void Q(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 >= iArr.length) {
                return;
            }
            iArr[i11] = iArr[i11] - i10;
            i11++;
        }
    }

    public void R(e eVar) {
        int[] iArr = eVar.f30630a;
        int length = iArr.length;
        int[] iArr2 = this.f30630a;
        if (length > iArr2.length) {
            this.f30630a = org.bouncycastle.util.a.S(iArr2, iArr.length);
        }
        int i10 = 0;
        while (true) {
            int[] iArr3 = eVar.f30630a;
            if (i10 >= iArr3.length) {
                return;
            }
            int[] iArr4 = this.f30630a;
            iArr4[i10] = iArr4[i10] - iArr3[i10];
            i10++;
        }
    }

    public void S(e eVar, int i10) {
        R(eVar);
        z(i10);
    }

    public int T() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return i11;
            }
            i11 += iArr[i10];
            i10++;
        }
    }

    public byte[] U(int i10) {
        return Zl.a.h(this.f30630a, i10);
    }

    public byte[] V() {
        return Zl.a.f(this.f30630a);
    }

    public byte[] W() {
        BigInteger bigInteger = Yl.c.f30624a;
        for (int length = this.f30630a.length - 1; length >= 0; length--) {
            bigInteger = bigInteger.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(this.f30630a[length] + 1));
        }
        int bitLength = (BigInteger.valueOf(3L).pow(this.f30630a.length).bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length >= bitLength) {
            return byteArray.length > bitLength ? org.bouncycastle.util.a.X(byteArray, 1, byteArray.length) : byteArray;
        }
        byte[] bArr = new byte[bitLength];
        System.arraycopy(byteArray, 0, bArr, bitLength - byteArray.length, byteArray.length);
        return bArr;
    }

    @Override
    public e a(e eVar) {
        int[] iArr;
        int length = this.f30630a.length;
        if (eVar.f30630a.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        e H10 = H(eVar);
        if (H10.f30630a.length > length) {
            int i10 = length;
            while (true) {
                iArr = H10.f30630a;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = i10 - length;
                iArr[i11] = iArr[i11] + iArr[i10];
                i10++;
            }
            H10.f30630a = org.bouncycastle.util.a.S(iArr, length);
        }
        return H10;
    }

    @Override
    public e b() {
        return (e) clone();
    }

    @Override
    public Yl.b c(Yl.b bVar) {
        return new Yl.b(this).j(bVar);
    }

    public void clear() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public Object clone() {
        return new e((int[]) this.f30630a.clone());
    }

    @Override
    public e e(e eVar, int i10) {
        e a10 = a(eVar);
        a10.z(i10);
        return a10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return org.bouncycastle.util.a.i(this.f30630a, ((e) obj).f30630a);
        }
        return false;
    }

    public void h(e eVar) {
        int[] iArr = eVar.f30630a;
        int length = iArr.length;
        int[] iArr2 = this.f30630a;
        if (length > iArr2.length) {
            this.f30630a = org.bouncycastle.util.a.S(iArr2, iArr.length);
        }
        int i10 = 0;
        while (true) {
            int[] iArr3 = eVar.f30630a;
            if (i10 >= iArr3.length) {
                return;
            }
            int[] iArr4 = this.f30630a;
            iArr4[i10] = iArr4[i10] + iArr3[i10];
            i10++;
        }
    }

    public void i(e eVar, int i10) {
        h(eVar);
        z(i10);
    }

    public void j(int i10) {
        for (int i11 = 0; i11 < this.f30630a.length; i11++) {
            while (true) {
                int[] iArr = this.f30630a;
                int i12 = iArr[i11];
                if (i12 >= (-i10) / 2) {
                    break;
                } else {
                    iArr[i11] = i12 + i10;
                }
            }
            while (true) {
                int[] iArr2 = this.f30630a;
                int i13 = iArr2[i11];
                if (i13 > i10 / 2) {
                    iArr2[i11] = i13 - i10;
                }
            }
        }
    }

    public long k(int i10) {
        int length = this.f30630a.length;
        e eVar = (e) clone();
        eVar.N(i10);
        long j10 = 0;
        int i11 = 0;
        long j11 = 0;
        while (true) {
            int[] iArr = eVar.f30630a;
            if (i11 == iArr.length) {
                return j10 - ((j11 * j11) / length);
            }
            j11 += iArr[i11];
            j10 += r6 * r6;
            i11++;
        }
    }

    public int l(int i10) {
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 == iArr.length) {
                return i12;
            }
            if (iArr[i11] == i10) {
                i12++;
            }
            i11++;
        }
    }

    public int m() {
        int length = this.f30630a.length - 1;
        while (length > 0 && this.f30630a[length] == 0) {
            length--;
        }
        return length;
    }

    public void n(int i10) {
        int i11 = (i10 + 1) / 2;
        int i12 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i12 >= iArr.length) {
                return;
            }
            int i13 = iArr[i12];
            int i14 = i13 + (i13 > 0 ? i11 : -i11);
            iArr[i12] = i14;
            iArr[i12] = i14 / i10;
            i12++;
        }
    }

    public void o(int i10) {
        for (int i11 = 0; i11 < this.f30630a.length; i11++) {
            while (true) {
                int[] iArr = this.f30630a;
                int i12 = iArr[i11];
                if (i12 < 0) {
                    iArr[i11] = i12 + i10;
                }
            }
        }
    }

    public final boolean p() {
        int i10 = 1;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return Math.abs(iArr[0]) == 1;
            }
            if (iArr[i10] != 0) {
                return false;
            }
            i10++;
        }
    }

    public boolean q() {
        int i10 = 1;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return iArr[0] == 1;
            }
            if (iArr[i10] != 0) {
                return false;
            }
            i10++;
        }
    }

    public final boolean r() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i10 >= iArr.length) {
                return true;
            }
            if (iArr[i10] != 0) {
                return false;
            }
            i10++;
        }
    }

    public e x() {
        int length = this.f30630a.length;
        int i10 = length + 1;
        e eVar = new e(i10);
        eVar.f30630a[0] = 1;
        e eVar2 = new e(i10);
        e eVar3 = new e(i10);
        eVar3.f30630a = org.bouncycastle.util.a.S(this.f30630a, i10);
        eVar3.D(3);
        e eVar4 = new e(i10);
        int[] iArr = eVar4.f30630a;
        iArr[0] = -1;
        iArr[length] = 1;
        int i11 = 0;
        while (true) {
            if (eVar3.f30630a[0] == 0) {
                for (int i12 = 1; i12 <= length; i12++) {
                    int[] iArr2 = eVar3.f30630a;
                    iArr2[i12 - 1] = iArr2[i12];
                    int[] iArr3 = eVar2.f30630a;
                    iArr3[i10 - i12] = iArr3[length - i12];
                }
                eVar3.f30630a[length] = 0;
                eVar2.f30630a[0] = 0;
                i11++;
                if (eVar3.r()) {
                    return null;
                }
            } else {
                if (eVar3.p()) {
                    if (eVar.f30630a[length] != 0) {
                        return null;
                    }
                    e eVar5 = new e(length);
                    int i13 = i11 % length;
                    for (int i14 = length - 1; i14 >= 0; i14--) {
                        int i15 = i14 - i13;
                        if (i15 < 0) {
                            i15 += length;
                        }
                        eVar5.f30630a[i15] = eVar3.f30630a[0] * eVar.f30630a[i14];
                    }
                    eVar5.o(3);
                    return eVar5;
                }
                if (eVar3.m() < eVar4.m()) {
                    e eVar6 = eVar2;
                    eVar2 = eVar;
                    eVar = eVar6;
                    e eVar7 = eVar4;
                    eVar4 = eVar3;
                    eVar3 = eVar7;
                }
                if (eVar3.f30630a[0] == eVar4.f30630a[0]) {
                    eVar3.S(eVar4, 3);
                    eVar.S(eVar2, 3);
                } else {
                    eVar3.i(eVar4, 3);
                    eVar.i(eVar2, 3);
                }
            }
        }
    }

    public e y(int i10) {
        int length = this.f30630a.length;
        int i11 = length + 1;
        e eVar = new e(i11);
        eVar.f30630a[0] = 1;
        e eVar2 = new e(i11);
        e eVar3 = new e(i11);
        eVar3.f30630a = org.bouncycastle.util.a.S(this.f30630a, i11);
        eVar3.D(2);
        e eVar4 = new e(i11);
        int[] iArr = eVar4.f30630a;
        iArr[0] = 1;
        iArr[length] = 1;
        int i12 = 0;
        while (true) {
            if (eVar3.f30630a[0] == 0) {
                for (int i13 = 1; i13 <= length; i13++) {
                    int[] iArr2 = eVar3.f30630a;
                    iArr2[i13 - 1] = iArr2[i13];
                    int[] iArr3 = eVar2.f30630a;
                    iArr3[i11 - i13] = iArr3[length - i13];
                }
                eVar3.f30630a[length] = 0;
                eVar2.f30630a[0] = 0;
                i12++;
                if (eVar3.r()) {
                    return null;
                }
            } else {
                if (eVar3.q()) {
                    if (eVar.f30630a[length] != 0) {
                        return null;
                    }
                    e eVar5 = new e(length);
                    int i14 = i12 % length;
                    for (int i15 = length - 1; i15 >= 0; i15--) {
                        int i16 = i15 - i14;
                        if (i16 < 0) {
                            i16 += length;
                        }
                        eVar5.f30630a[i16] = eVar.f30630a[i15];
                    }
                    return A(eVar5, i10);
                }
                if (eVar3.m() < eVar4.m()) {
                    e eVar6 = eVar2;
                    eVar2 = eVar;
                    eVar = eVar6;
                    e eVar7 = eVar4;
                    eVar4 = eVar3;
                    eVar3 = eVar7;
                }
                eVar3.i(eVar4, 2);
                eVar.i(eVar2, 2);
            }
        }
    }

    public void z(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 >= iArr.length) {
                return;
            }
            iArr[i11] = iArr[i11] % i10;
            i11++;
        }
    }

    public e(Yl.b bVar) {
        this.f30630a = new int[bVar.f30623a.length];
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = bVar.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return;
            }
            this.f30630a[i10] = bigIntegerArr[i10].intValue();
            i10++;
        }
    }

    public e(int[] iArr) {
        this.f30630a = iArr;
    }
}
