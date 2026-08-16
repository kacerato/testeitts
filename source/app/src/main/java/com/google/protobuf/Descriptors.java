package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.C12699o0;
import com.google.protobuf.D0;
import com.google.protobuf.H;
import com.google.protobuf.InterfaceC12659b1;
import com.google.protobuf.TextFormat;
import com.google.protobuf.Y0;
import java.lang.constant.ConstantDescs;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.luaj.vm2.LuaDouble;

@B
public final class Descriptors {

    public static final Logger f67944a = Logger.getLogger(Descriptors.class.getName());

    public static final int[] f67945b = new int[0];

    public static final b[] f67946c = new b[0];

    public static final f[] f67947d = new f[0];

    public static final d[] f67948e = new d[0];

    public static final l[] f67949f = new l[0];

    public static final k[] f67950g = new k[0];

    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Y0 proto;

        public DescriptorValidationException(g gVar, String str, a aVar) {
            this(gVar, str);
        }

        public String getDescription() {
            return this.description;
        }

        public Y0 getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }

        public DescriptorValidationException(h hVar, String str, a aVar) {
            this(hVar, str);
        }

        public DescriptorValidationException(h hVar, String str, Throwable th2, a aVar) {
            this(hVar, str, th2);
        }

        private DescriptorValidationException(final h problemDescriptor, final String description) {
            super(problemDescriptor.b() + ": " + description);
            this.name = problemDescriptor.b();
            this.proto = problemDescriptor.d();
            this.description = description;
        }

        private DescriptorValidationException(final h problemDescriptor, final String description, final Throwable cause) {
            this(problemDescriptor, description);
            initCause(cause);
        }

        private DescriptorValidationException(final g problemDescriptor, final String description) {
            super(problemDescriptor.c() + ": " + description);
            this.name = problemDescriptor.c();
            this.proto = problemDescriptor.d();
            this.description = description;
        }
    }

    public static class a {

        public static final int[] f67951a;

        public static final int[] f67952b;

        static {
            int[] iArr = new int[f.b.values().length];
            f67952b = iArr;
            try {
                iArr[f.b.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67952b[f.b.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[f.c.values().length];
            f67951a = iArr2;
            try {
                iArr2[f.c.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67951a[f.c.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67951a[f.c.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f67951a[f.c.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f67951a[f.c.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f67951a[f.c.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f67951a[f.c.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f67951a[f.c.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f67951a[f.c.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f67951a[f.c.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f67951a[f.c.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f67951a[f.c.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f67951a[f.c.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f67951a[f.c.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f67951a[f.c.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f67951a[f.c.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f67951a[f.c.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f67951a[f.c.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    public static final class b extends h {

        public final int f67953b;

        public H.C12638b f67954c;

        public final String f67955d;

        public final g f67956e;

        public final b f67957f;

        public final b[] f67958g;

        public final d[] f67959h;

        public final f[] f67960i;

        public final f[] f67961j;

        public final f[] f67962k;

        public final k[] f67963l;

        public final int f67964m;

        public final int[] f67965n;

        public final int[] f67966o;

        public b(H.C12638b c12638b, g gVar, b bVar, int i10, a aVar) throws DescriptorValidationException {
            this(c12638b, gVar, bVar, i10);
        }

        public boolean A(final String name) {
            D0.d(name);
            Iterator<String> it = this.f67954c.r0().iterator();
            while (it.hasNext()) {
                if (it.next().equals(name)) {
                    return true;
                }
            }
            return false;
        }

        public boolean B(final int number) {
            for (H.C12638b.e eVar : this.f67954c.w0()) {
                if (eVar.getStart() <= number && number < eVar.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        public final void C(final H.C12638b proto) {
            this.f67954c = proto;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                b[] bVarArr = this.f67958g;
                if (i11 >= bVarArr.length) {
                    break;
                }
                bVarArr[i11].C(proto.M4(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                k[] kVarArr = this.f67963l;
                if (i12 >= kVarArr.length) {
                    break;
                }
                kVarArr[i12].u(proto.X5(i12));
                i12++;
            }
            int i13 = 0;
            while (true) {
                d[] dVarArr = this.f67959h;
                if (i13 >= dVarArr.length) {
                    break;
                }
                dVarArr[i13].x(proto.i0(i13));
                i13++;
            }
            int i14 = 0;
            while (true) {
                f[] fVarArr = this.f67960i;
                if (i14 >= fVarArr.length) {
                    break;
                }
                fVarArr[i14].L(proto.e4(i14));
                i14++;
            }
            while (true) {
                f[] fVarArr2 = this.f67962k;
                if (i10 >= fVarArr2.length) {
                    return;
                }
                fVarArr2[i10].L(proto.u0(i10));
                i10++;
            }
        }

        @Override
        public H.C12638b d() {
            return this.f67954c;
        }

        public final void F() throws DescriptorValidationException {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                f[] fVarArr = this.f67961j;
                if (i11 >= fVarArr.length) {
                    return;
                }
                f fVar = fVarArr[i10];
                f fVar2 = fVarArr[i11];
                if (fVar.getNumber() == fVar2.getNumber()) {
                    throw new DescriptorValidationException(fVar2, "Field number " + fVar2.getNumber() + " has already been used in \"" + fVar2.q().b() + "\" by field \"" + fVar.c() + "\".", (a) null);
                }
                i10 = i11;
            }
        }

        @Override
        public g a() {
            return this.f67956e;
        }

        @Override
        public String b() {
            return this.f67955d;
        }

        @Override
        public String c() {
            return this.f67954c.getName();
        }

        public final void h() throws DescriptorValidationException {
            for (b bVar : this.f67958g) {
                bVar.h();
            }
            for (f fVar : this.f67960i) {
                fVar.k();
            }
            Arrays.sort(this.f67961j);
            F();
            for (f fVar2 : this.f67962k) {
                fVar2.k();
            }
        }

        public d i(final String name) {
            h c10 = this.f67956e.f68012i.c(this.f67955d + '.' + name);
            if (c10 instanceof d) {
                return (d) c10;
            }
            return null;
        }

        public f j(final String name) {
            h c10 = this.f67956e.f68012i.c(this.f67955d + '.' + name);
            if (c10 instanceof f) {
                return (f) c10;
            }
            return null;
        }

        public f k(final int number) {
            f[] fVarArr = this.f67961j;
            return (f) Descriptors.j(fVarArr, fVarArr.length, f.f67990o, number);
        }

        public b m(final String name) {
            h c10 = this.f67956e.f68012i.c(this.f67955d + '.' + name);
            if (c10 instanceof b) {
                return (b) c10;
            }
            return null;
        }

        public b o() {
            return this.f67957f;
        }

        public List<d> q() {
            return Collections.unmodifiableList(Arrays.asList(this.f67959h));
        }

        public List<f> r() {
            return Collections.unmodifiableList(Arrays.asList(this.f67962k));
        }

        public List<f> s() {
            return Collections.unmodifiableList(Arrays.asList(this.f67960i));
        }

        public int t() {
            return this.f67953b;
        }

        public List<b> u() {
            return Collections.unmodifiableList(Arrays.asList(this.f67958g));
        }

        public List<k> v() {
            return Collections.unmodifiableList(Arrays.asList(this.f67963l));
        }

        public H.z w() {
            return this.f67954c.getOptions();
        }

        public List<k> x() {
            return Collections.unmodifiableList(Arrays.asList(this.f67963l).subList(0, this.f67964m));
        }

        public boolean y() {
            return !this.f67954c.V0().isEmpty();
        }

        public boolean z(final int number) {
            int binarySearch = Arrays.binarySearch(this.f67965n, number);
            if (binarySearch < 0) {
                binarySearch = (~binarySearch) - 1;
            }
            return binarySearch >= 0 && number < this.f67966o[binarySearch];
        }

        public b(final String fullname) throws DescriptorValidationException {
            super(null);
            String str;
            String str2;
            int lastIndexOf = fullname.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str2 = fullname.substring(lastIndexOf + 1);
                str = fullname.substring(0, lastIndexOf);
            } else {
                str = "";
                str2 = fullname;
            }
            this.f67953b = 0;
            this.f67954c = H.C12638b.Q6().D8(str2).J6(H.C12638b.c.z6().F6(1).C6(536870912).build()).build();
            this.f67955d = fullname;
            this.f67957f = null;
            this.f67958g = Descriptors.f67946c;
            this.f67959h = Descriptors.f67948e;
            this.f67960i = Descriptors.f67947d;
            this.f67961j = Descriptors.f67947d;
            this.f67962k = Descriptors.f67947d;
            this.f67963l = Descriptors.f67950g;
            this.f67964m = 0;
            this.f67956e = new g(str, this);
            this.f67965n = new int[]{1};
            this.f67966o = new int[]{536870912};
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(final H.C12638b proto, final g file, final b parent, final int index) throws DescriptorValidationException {
            super(r0);
            k[] kVarArr;
            b[] bVarArr;
            d[] dVarArr;
            f[] fVarArr;
            f[] fVarArr2;
            a aVar = null;
            this.f67953b = index;
            this.f67954c = proto;
            this.f67955d = Descriptors.k(file, parent, proto.getName());
            this.f67956e = file;
            this.f67957f = parent;
            if (proto.O0() > 0) {
                kVarArr = new k[proto.O0()];
            } else {
                kVarArr = Descriptors.f67950g;
            }
            this.f67963l = kVarArr;
            int i10 = 0;
            for (int i11 = 0; i11 < proto.O0(); i11++) {
                this.f67963l[i11] = new k(proto.X5(i11), file, this, i11, null);
            }
            if (proto.I4() > 0) {
                bVarArr = new b[proto.I4()];
            } else {
                bVarArr = Descriptors.f67946c;
            }
            this.f67958g = bVarArr;
            for (int i12 = 0; i12 < proto.I4(); i12++) {
                this.f67958g[i12] = new b(proto.M4(i12), file, this, i12);
            }
            if (proto.f0() > 0) {
                dVarArr = new d[proto.f0()];
            } else {
                dVarArr = Descriptors.f67948e;
            }
            this.f67959h = dVarArr;
            for (int i13 = 0; i13 < proto.f0(); i13++) {
                this.f67959h[i13] = new d(proto.i0(i13), file, this, i13, null);
            }
            if (proto.c1() > 0) {
                fVarArr = new f[proto.c1()];
            } else {
                fVarArr = Descriptors.f67947d;
            }
            this.f67960i = fVarArr;
            for (int i14 = 0; i14 < proto.c1(); i14++) {
                this.f67960i[i14] = new f(proto.e4(i14), file, this, i14, false, null);
            }
            this.f67961j = proto.c1() > 0 ? (f[]) this.f67960i.clone() : Descriptors.f67947d;
            if (proto.P() > 0) {
                fVarArr2 = new f[proto.P()];
            } else {
                fVarArr2 = Descriptors.f67947d;
            }
            this.f67962k = fVarArr2;
            for (int i15 = 0; i15 < proto.P(); i15++) {
                this.f67962k[i15] = new f(proto.u0(i15), file, this, i15, true, null);
            }
            for (int i16 = 0; i16 < proto.O0(); i16++) {
                k kVar = this.f67963l[i16];
                kVar.f68026h = new f[kVar.o()];
                this.f67963l[i16].f68025g = 0;
            }
            for (int i17 = 0; i17 < proto.c1(); i17++) {
                k o10 = this.f67960i[i17].o();
                if (o10 != null) {
                    o10.f68026h[k.i(o10)] = this.f67960i[i17];
                }
            }
            int i18 = 0;
            for (k kVar2 : this.f67963l) {
                if (kVar2.t()) {
                    i18++;
                } else if (i18 > 0) {
                    throw new DescriptorValidationException(this, "Synthetic oneofs must come last.", aVar);
                }
            }
            this.f67964m = this.f67963l.length - i18;
            file.f68012i.b(this);
            if (proto.p3() > 0) {
                this.f67965n = new int[proto.p3()];
                this.f67966o = new int[proto.p3()];
                for (H.C12638b.c cVar : proto.V0()) {
                    this.f67965n[i10] = cVar.getStart();
                    this.f67966o[i10] = cVar.getEnd();
                    i10++;
                }
                Arrays.sort(this.f67965n);
                Arrays.sort(this.f67966o);
                return;
            }
            this.f67965n = Descriptors.f67945b;
            this.f67966o = Descriptors.f67945b;
        }
    }

    public static final class c {

        public final Set<g> f67967a;

        public final boolean f67968b;

        public final Map<String, h> f67969c = new HashMap();

        public static final class a extends h {

            public final String f67970b;

            public final String f67971c;

            public final g f67972d;

            public a(final String name, final String fullName, final g file) {
                super(null);
                this.f67972d = file;
                this.f67971c = fullName;
                this.f67970b = name;
            }

            @Override
            public g a() {
                return this.f67972d;
            }

            @Override
            public String b() {
                return this.f67971c;
            }

            @Override
            public String c() {
                return this.f67970b;
            }

            @Override
            public Y0 d() {
                return this.f67972d.d();
            }
        }

        public enum b {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        public c(final g[] dependencies, boolean allowUnknownDependencies) {
            this.f67967a = Collections.newSetFromMap(new IdentityHashMap(dependencies.length));
            this.f67968b = allowUnknownDependencies;
            for (g gVar : dependencies) {
                this.f67967a.add(gVar);
                e(gVar);
            }
            for (g gVar2 : this.f67967a) {
                try {
                    a(gVar2.w(), gVar2);
                } catch (DescriptorValidationException e10) {
                    throw new AssertionError(e10);
                }
            }
        }

        public static void i(final h descriptor) throws DescriptorValidationException {
            String c10 = descriptor.c();
            a aVar = null;
            if (c10.length() == 0) {
                throw new DescriptorValidationException(descriptor, "Missing name.", aVar);
            }
            for (int i10 = 0; i10 < c10.length(); i10++) {
                char charAt = c10.charAt(i10);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i10 <= 0))) {
                    throw new DescriptorValidationException(descriptor, '\"' + c10 + "\" is not a valid identifier.", aVar);
                }
            }
        }

        public void a(final String fullName, final g file) throws DescriptorValidationException {
            String substring;
            int lastIndexOf = fullName.lastIndexOf(46);
            if (lastIndexOf == -1) {
                substring = fullName;
            } else {
                a(fullName.substring(0, lastIndexOf), file);
                substring = fullName.substring(lastIndexOf + 1);
            }
            h put = this.f67969c.put(fullName, new a(substring, fullName, file));
            if (put != null) {
                this.f67969c.put(fullName, put);
                if (put instanceof a) {
                    return;
                }
                throw new DescriptorValidationException(file, '\"' + substring + "\" is already defined (as something other than a package) in file \"" + put.a().c() + "\".", (a) null);
            }
        }

        public void b(final h descriptor) throws DescriptorValidationException {
            i(descriptor);
            String b10 = descriptor.b();
            h put = this.f67969c.put(b10, descriptor);
            if (put != null) {
                this.f67969c.put(b10, put);
                a aVar = null;
                if (descriptor.a() != put.a()) {
                    throw new DescriptorValidationException(descriptor, '\"' + b10 + "\" is already defined in file \"" + put.a().c() + "\".", aVar);
                }
                int lastIndexOf = b10.lastIndexOf(46);
                if (lastIndexOf == -1) {
                    throw new DescriptorValidationException(descriptor, '\"' + b10 + "\" is already defined.", aVar);
                }
                throw new DescriptorValidationException(descriptor, '\"' + b10.substring(lastIndexOf + 1) + "\" is already defined in \"" + b10.substring(0, lastIndexOf) + "\".", aVar);
            }
        }

        public h c(final String fullName) {
            return d(fullName, b.ALL_SYMBOLS);
        }

        public h d(final String fullName, final b filter) {
            h hVar = this.f67969c.get(fullName);
            if (hVar != null && (filter == b.ALL_SYMBOLS || ((filter == b.TYPES_ONLY && g(hVar)) || (filter == b.AGGREGATES_ONLY && f(hVar))))) {
                return hVar;
            }
            Iterator<g> it = this.f67967a.iterator();
            while (it.hasNext()) {
                h hVar2 = it.next().f68012i.f67969c.get(fullName);
                if (hVar2 != null && (filter == b.ALL_SYMBOLS || ((filter == b.TYPES_ONLY && g(hVar2)) || (filter == b.AGGREGATES_ONLY && f(hVar2))))) {
                    return hVar2;
                }
            }
            return null;
        }

        public final void e(final g file) {
            for (g gVar : file.x()) {
                if (this.f67967a.add(gVar)) {
                    e(gVar);
                }
            }
        }

        public boolean f(h descriptor) {
            return (descriptor instanceof b) || (descriptor instanceof d) || (descriptor instanceof a) || (descriptor instanceof l);
        }

        public boolean g(h descriptor) {
            return (descriptor instanceof b) || (descriptor instanceof d);
        }

        public h h(final String name, final h relativeTo, final b filter) throws DescriptorValidationException {
            h d10;
            String str;
            if (name.startsWith(".")) {
                str = name.substring(1);
                d10 = d(str, filter);
            } else {
                int indexOf = name.indexOf(46);
                String substring = indexOf == -1 ? name : name.substring(0, indexOf);
                StringBuilder sb2 = new StringBuilder(relativeTo.b());
                while (true) {
                    int lastIndexOf = sb2.lastIndexOf(".");
                    if (lastIndexOf == -1) {
                        d10 = d(name, filter);
                        str = name;
                        break;
                    }
                    int i10 = lastIndexOf + 1;
                    sb2.setLength(i10);
                    sb2.append(substring);
                    h d11 = d(sb2.toString(), b.AGGREGATES_ONLY);
                    if (d11 != null) {
                        if (indexOf != -1) {
                            sb2.setLength(i10);
                            sb2.append(name);
                            d10 = d(sb2.toString(), filter);
                        } else {
                            d10 = d11;
                        }
                        str = sb2.toString();
                    } else {
                        sb2.setLength(lastIndexOf);
                    }
                }
            }
            if (d10 != null) {
                return d10;
            }
            if (!this.f67968b || filter != b.TYPES_ONLY) {
                throw new DescriptorValidationException(relativeTo, '\"' + name + "\" is not defined.", (a) null);
            }
            Descriptors.f67944a.warning("The descriptor for message type \"" + name + "\" cannot be found and a placeholder is created for it");
            b bVar = new b(str);
            this.f67967a.add(bVar.a());
            return bVar;
        }
    }

    public static final class d extends h implements D0.d<e> {

        public final int f67973b;

        public H.C12640d f67974c;

        public final String f67975d;

        public final g f67976e;

        public final b f67977f;

        public final e[] f67978g;

        public final e[] f67979h;

        public final int f67980i;

        public Map<Integer, WeakReference<e>> f67981j;

        public ReferenceQueue<e> f67982k;

        public static class a extends WeakReference<e> {

            public final int f67983a;

            public a(int i10, e eVar, a aVar) {
                this(i10, eVar);
            }

            public a(int number, e descriptor) {
                super(descriptor);
                this.f67983a = number;
            }
        }

        public d(H.C12640d c12640d, g gVar, b bVar, int i10, a aVar) throws DescriptorValidationException {
            this(c12640d, gVar, bVar, i10);
        }

        @Override
        public g a() {
            return this.f67976e;
        }

        @Override
        public String b() {
            return this.f67975d;
        }

        @Override
        public String c() {
            return this.f67974c.getName();
        }

        public e h(final String name) {
            h c10 = this.f67976e.f68012i.c(this.f67975d + '.' + name);
            if (c10 instanceof e) {
                return (e) c10;
            }
            return null;
        }

        @Override
        public e findValueByNumber(final int number) {
            return (e) Descriptors.j(this.f67979h, this.f67980i, e.f67985g, number);
        }

        public e k(final int number) {
            e eVar;
            e findValueByNumber = findValueByNumber(number);
            if (findValueByNumber != null) {
                return findValueByNumber;
            }
            synchronized (this) {
                try {
                    if (this.f67982k == null) {
                        this.f67982k = new ReferenceQueue<>();
                        this.f67981j = new HashMap();
                    } else {
                        while (true) {
                            a aVar = (a) this.f67982k.poll();
                            if (aVar == null) {
                                break;
                            }
                            this.f67981j.remove(Integer.valueOf(aVar.f67983a));
                        }
                    }
                    WeakReference<e> weakReference = this.f67981j.get(Integer.valueOf(number));
                    a aVar2 = null;
                    eVar = weakReference == null ? null : weakReference.get();
                    if (eVar == null) {
                        eVar = new e(this, Integer.valueOf(number), aVar2);
                        this.f67981j.put(Integer.valueOf(number), new a(number, eVar, aVar2));
                    }
                } finally {
                }
            }
            return eVar;
        }

        public b o() {
            return this.f67977f;
        }

        public int q() {
            return this.f67973b;
        }

        public H.C12642f r() {
            return this.f67974c.getOptions();
        }

        public int s() {
            return this.f67981j.size();
        }

        public List<e> t() {
            return Collections.unmodifiableList(Arrays.asList(this.f67978g));
        }

        public boolean u() {
            return a().z() != g.b.PROTO3;
        }

        public boolean v(final String name) {
            D0.d(name);
            Iterator<String> it = this.f67974c.r0().iterator();
            while (it.hasNext()) {
                if (it.next().equals(name)) {
                    return true;
                }
            }
            return false;
        }

        public boolean w(final int number) {
            for (H.C12640d.c cVar : this.f67974c.w0()) {
                if (cVar.getStart() <= number && number <= cVar.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        public final void x(final H.C12640d proto) {
            this.f67974c = proto;
            int i10 = 0;
            while (true) {
                e[] eVarArr = this.f67978g;
                if (i10 >= eVarArr.length) {
                    return;
                }
                eVarArr[i10].j(proto.getValue(i10));
                i10++;
            }
        }

        @Override
        public H.C12640d d() {
            return this.f67974c;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public d(final H.C12640d proto, final g file, final b parent, final int index) throws DescriptorValidationException {
            super(r0);
            a aVar = null;
            this.f67981j = null;
            this.f67982k = null;
            this.f67973b = index;
            this.f67974c = proto;
            this.f67975d = Descriptors.k(file, parent, proto.getName());
            this.f67976e = file;
            this.f67977f = parent;
            if (proto.y4() != 0) {
                this.f67978g = new e[proto.y4()];
                int i10 = 0;
                for (int i11 = 0; i11 < proto.y4(); i11++) {
                    this.f67978g[i11] = new e(proto.getValue(i11), file, this, i11, null);
                }
                e[] eVarArr = (e[]) this.f67978g.clone();
                this.f67979h = eVarArr;
                Arrays.sort(eVarArr, e.f67984f);
                for (int i12 = 1; i12 < proto.y4(); i12++) {
                    e[] eVarArr2 = this.f67979h;
                    e eVar = eVarArr2[i10];
                    e eVar2 = eVarArr2[i12];
                    if (eVar.getNumber() != eVar2.getNumber()) {
                        i10++;
                        this.f67979h[i10] = eVar2;
                    }
                }
                int i13 = i10 + 1;
                this.f67980i = i13;
                Arrays.fill(this.f67979h, i13, proto.y4(), (Object) null);
                file.f68012i.b(this);
                return;
            }
            throw new DescriptorValidationException(this, "Enums must contain at least one value.", aVar);
        }
    }

    public static final class e extends h implements D0.c {

        public static final Comparator<e> f67984f = new a();

        public static final j<e> f67985g = new b();

        public final int f67986b;

        public H.h f67987c;

        public final String f67988d;

        public final d f67989e;

        public class a implements Comparator<e> {
            @Override
            public int compare(e o12, e o22) {
                return Integer.valueOf(o12.getNumber()).compareTo(Integer.valueOf(o22.getNumber()));
            }
        }

        public class b implements j<e> {
            @Override
            public int a(e enumValueDescriptor) {
                return enumValueDescriptor.getNumber();
            }
        }

        public e(H.h hVar, g gVar, d dVar, int i10, a aVar) throws DescriptorValidationException {
            this(hVar, gVar, dVar, i10);
        }

        @Override
        public g a() {
            return this.f67989e.f67976e;
        }

        @Override
        public String b() {
            return this.f67988d;
        }

        @Override
        public String c() {
            return this.f67987c.getName();
        }

        public int g() {
            return this.f67986b;
        }

        @Override
        public int getNumber() {
            return this.f67987c.getNumber();
        }

        public H.C12645j h() {
            return this.f67987c.getOptions();
        }

        public d i() {
            return this.f67989e;
        }

        public final void j(final H.h proto) {
            this.f67987c = proto;
        }

        @Override
        public H.h d() {
            return this.f67987c;
        }

        public String toString() {
            return this.f67987c.getName();
        }

        public e(d dVar, Integer num, a aVar) {
            this(dVar, num);
        }

        public e(final H.h proto, final g file, final d parent, final int index) throws DescriptorValidationException {
            super(null);
            this.f67986b = index;
            this.f67987c = proto;
            this.f67989e = parent;
            this.f67988d = parent.b() + '.' + proto.getName();
            file.f68012i.b(this);
        }

        public e(final d parent, final Integer number) {
            super(null);
            H.h build = H.h.A6().C6("UNKNOWN_ENUM_VALUE_" + parent.c() + ConstantDescs.DEFAULT_NAME + ((Object) number)).E6(number.intValue()).build();
            this.f67986b = -1;
            this.f67987c = build;
            this.f67989e = parent;
            this.f67988d = parent.b() + '.' + build.getName();
        }
    }

    public static final class f extends h implements Comparable<f>, C12699o0.c<f> {

        public static final j<f> f67990o = new a();

        public static final A2.b[] f67991p = A2.b.values();

        public final int f67992b;

        public H.C12649n f67993c;

        public final String f67994d;

        public String f67995e;

        public final g f67996f;

        public final b f67997g;

        public final boolean f67998h;

        public c f67999i;

        public b f68000j;

        public b f68001k;

        public k f68002l;

        public d f68003m;

        public Object f68004n;

        public class a implements j<f> {
            @Override
            public int a(f fieldDescriptor) {
                return fieldDescriptor.getNumber();
            }
        }

        public enum b {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(Boolean.FALSE),
            STRING(""),
            BYTE_STRING(AbstractC12724x.f69696g),
            ENUM(null),
            MESSAGE(null);

            private final Object defaultDefault;

            b(final Object defaultDefault) {
                this.defaultDefault = defaultDefault;
            }
        }

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class c {
            private static final c[] $VALUES;
            public static final c BOOL;
            public static final c BYTES;
            public static final c DOUBLE;
            public static final c ENUM;
            public static final c FIXED32;
            public static final c FIXED64;
            public static final c FLOAT;
            public static final c GROUP;
            public static final c INT32;
            public static final c INT64;
            public static final c MESSAGE;
            public static final c SFIXED32;
            public static final c SFIXED64;
            public static final c SINT32;
            public static final c SINT64;
            public static final c STRING;
            public static final c UINT32;
            public static final c UINT64;
            private static final c[] types;
            private final b javaType;

            static {
                c cVar = new c("DOUBLE", 0, b.DOUBLE);
                DOUBLE = cVar;
                c cVar2 = new c("FLOAT", 1, b.FLOAT);
                FLOAT = cVar2;
                b bVar = b.LONG;
                c cVar3 = new c("INT64", 2, bVar);
                INT64 = cVar3;
                c cVar4 = new c("UINT64", 3, bVar);
                UINT64 = cVar4;
                b bVar2 = b.INT;
                c cVar5 = new c("INT32", 4, bVar2);
                INT32 = cVar5;
                c cVar6 = new c("FIXED64", 5, bVar);
                FIXED64 = cVar6;
                c cVar7 = new c("FIXED32", 6, bVar2);
                FIXED32 = cVar7;
                c cVar8 = new c("BOOL", 7, b.BOOLEAN);
                BOOL = cVar8;
                c cVar9 = new c("STRING", 8, b.STRING);
                STRING = cVar9;
                b bVar3 = b.MESSAGE;
                c cVar10 = new c("GROUP", 9, bVar3);
                GROUP = cVar10;
                c cVar11 = new c("MESSAGE", 10, bVar3);
                MESSAGE = cVar11;
                c cVar12 = new c("BYTES", 11, b.BYTE_STRING);
                BYTES = cVar12;
                c cVar13 = new c("UINT32", 12, bVar2);
                UINT32 = cVar13;
                c cVar14 = new c("ENUM", 13, b.ENUM);
                ENUM = cVar14;
                c cVar15 = new c("SFIXED32", 14, bVar2);
                SFIXED32 = cVar15;
                c cVar16 = new c("SFIXED64", 15, bVar);
                SFIXED64 = cVar16;
                c cVar17 = new c("SINT32", 16, bVar2);
                SINT32 = cVar17;
                c cVar18 = new c("SINT64", 17, bVar);
                SINT64 = cVar18;
                $VALUES = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9, cVar10, cVar11, cVar12, cVar13, cVar14, cVar15, cVar16, cVar17, cVar18};
                types = values();
            }

            public c(String $enum$name, int $enum$ordinal, b javaType) {
                this.javaType = javaType;
            }

            public static c d(final H.C12649n.d type) {
                return types[type.getNumber() - 1];
            }

            public static c valueOf(String name) {
                return (c) Enum.valueOf(c.class, name);
            }

            public static c[] values() {
                return (c[]) $VALUES.clone();
            }

            public b b() {
                return this.javaType;
            }

            public H.C12649n.d c() {
                return H.C12649n.d.a(ordinal() + 1);
            }
        }

        static {
            if (c.types.length != H.C12649n.d.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        public f(H.C12649n c12649n, g gVar, b bVar, int i10, boolean z10, a aVar) throws DescriptorValidationException {
            this(c12649n, gVar, bVar, i10, z10);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:47:0x0199. Please report as an issue. */
        public void k() throws DescriptorValidationException {
            a aVar = null;
            if (this.f67993c.W3()) {
                h h10 = this.f67996f.f68012i.h(this.f67993c.I5(), this, c.b.TYPES_ONLY);
                if (!(h10 instanceof b)) {
                    throw new DescriptorValidationException(this, '\"' + this.f67993c.I5() + "\" is not a message type.", aVar);
                }
                this.f68000j = (b) h10;
                if (!q().z(getNumber())) {
                    throw new DescriptorValidationException(this, '\"' + q().b() + "\" does not declare " + getNumber() + " as an extension number.", aVar);
                }
            }
            if (this.f67993c.n4()) {
                h h11 = this.f67996f.f68012i.h(this.f67993c.getTypeName(), this, c.b.TYPES_ONLY);
                if (!this.f67993c.j2()) {
                    if (h11 instanceof b) {
                        this.f67999i = c.MESSAGE;
                    } else {
                        if (!(h11 instanceof d)) {
                            throw new DescriptorValidationException(this, '\"' + this.f67993c.getTypeName() + "\" is not a type.", aVar);
                        }
                        this.f67999i = c.ENUM;
                    }
                }
                if (v() == b.MESSAGE) {
                    if (!(h11 instanceof b)) {
                        throw new DescriptorValidationException(this, '\"' + this.f67993c.getTypeName() + "\" is not a message type.", aVar);
                    }
                    this.f68001k = (b) h11;
                    if (this.f67993c.h3()) {
                        throw new DescriptorValidationException(this, "Messages can't have default values.", aVar);
                    }
                } else {
                    if (v() != b.ENUM) {
                        throw new DescriptorValidationException(this, "Field with primitive type has type_name.", aVar);
                    }
                    if (!(h11 instanceof d)) {
                        throw new DescriptorValidationException(this, '\"' + this.f67993c.getTypeName() + "\" is not an enum type.", aVar);
                    }
                    this.f68003m = (d) h11;
                }
            } else if (v() == b.MESSAGE || v() == b.ENUM) {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.", aVar);
            }
            if (this.f67993c.getOptions().k0() && !I()) {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", aVar);
            }
            if (this.f67993c.h3()) {
                if (Z1()) {
                    throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", aVar);
                }
                try {
                    switch (a.f67951a[A().ordinal()]) {
                        case 1:
                        case 2:
                        case 3:
                            this.f68004n = Integer.valueOf(TextFormat.s(this.f67993c.getDefaultValue()));
                            break;
                        case 4:
                        case 5:
                            this.f68004n = Integer.valueOf(TextFormat.v(this.f67993c.getDefaultValue()));
                            break;
                        case 6:
                        case 7:
                        case 8:
                            this.f68004n = Long.valueOf(TextFormat.t(this.f67993c.getDefaultValue()));
                            break;
                        case 9:
                        case 10:
                            this.f68004n = Long.valueOf(TextFormat.w(this.f67993c.getDefaultValue()));
                            break;
                        case 11:
                            if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_POSINF)) {
                                if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_NEGINF)) {
                                    if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_NAN)) {
                                        this.f68004n = Float.valueOf(this.f67993c.getDefaultValue());
                                        break;
                                    } else {
                                        this.f68004n = Float.valueOf(Float.NaN);
                                        break;
                                    }
                                } else {
                                    this.f68004n = Float.valueOf(Float.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f68004n = Float.valueOf(Float.POSITIVE_INFINITY);
                                break;
                            }
                        case 12:
                            if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_POSINF)) {
                                if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_NEGINF)) {
                                    if (!this.f67993c.getDefaultValue().equals(LuaDouble.JSTR_NAN)) {
                                        this.f68004n = Double.valueOf(this.f67993c.getDefaultValue());
                                        break;
                                    } else {
                                        this.f68004n = Double.valueOf(Double.NaN);
                                        break;
                                    }
                                } else {
                                    this.f68004n = Double.valueOf(Double.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f68004n = Double.valueOf(Double.POSITIVE_INFINITY);
                                break;
                            }
                        case 13:
                            this.f68004n = Boolean.valueOf(this.f67993c.getDefaultValue());
                            break;
                        case 14:
                            this.f68004n = this.f67993c.getDefaultValue();
                            break;
                        case 15:
                            try {
                                this.f68004n = TextFormat.Q(this.f67993c.getDefaultValue());
                                break;
                            } catch (TextFormat.InvalidEscapeSequenceException e10) {
                                throw new DescriptorValidationException(this, "Couldn't parse default value: " + e10.getMessage(), e10, aVar);
                            }
                        case 16:
                            e h12 = this.f68003m.h(this.f67993c.getDefaultValue());
                            this.f68004n = h12;
                            if (h12 == null) {
                                throw new DescriptorValidationException(this, "Unknown enum default value: \"" + this.f67993c.getDefaultValue() + '\"', aVar);
                            }
                            break;
                        case 17:
                        case 18:
                            throw new DescriptorValidationException(this, "Message type had default value.", aVar);
                    }
                } catch (NumberFormatException e11) {
                    throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.f67993c.getDefaultValue() + '\"', e11, aVar);
                }
            } else if (Z1()) {
                this.f68004n = Collections.emptyList();
            } else {
                int i10 = a.f67952b[v().ordinal()];
                if (i10 == 1) {
                    this.f68004n = this.f68003m.t().get(0);
                } else if (i10 != 2) {
                    this.f68004n = v().defaultDefault;
                } else {
                    this.f68004n = null;
                }
            }
            b bVar = this.f68000j;
            if (bVar == null || !bVar.w().X2()) {
                return;
            }
            if (!F()) {
                throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", aVar);
            }
            if (!H() || A() != c.MESSAGE) {
                throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", aVar);
            }
        }

        public static String m(String name) {
            int length = name.length();
            StringBuilder sb2 = new StringBuilder(length);
            boolean z10 = false;
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = name.charAt(i10);
                if (charAt == '_') {
                    z10 = true;
                } else if (z10) {
                    if ('a' <= charAt && charAt <= 'z') {
                        charAt = (char) (charAt - ' ');
                    }
                    sb2.append(charAt);
                    z10 = false;
                } else {
                    sb2.append(charAt);
                }
            }
            return sb2.toString();
        }

        public c A() {
            return this.f67999i;
        }

        public boolean B() {
            return this.f67993c.h3();
        }

        public boolean C() {
            return this.f67998h || (this.f67996f.z() == g.b.PROTO2 && H() && o() == null);
        }

        public boolean D() {
            if (Z1()) {
                return false;
            }
            return A() == c.MESSAGE || A() == c.GROUP || o() != null || this.f67996f.z() == g.b.PROTO2;
        }

        public boolean F() {
            return this.f67993c.W3();
        }

        public boolean G() {
            return A() == c.MESSAGE && Z1() && x().w().E3();
        }

        public boolean H() {
            return this.f67993c.getLabel() == H.C12649n.c.LABEL_OPTIONAL;
        }

        public boolean I() {
            return Z1() && U1().c();
        }

        public boolean J() {
            return this.f67993c.getLabel() == H.C12649n.c.LABEL_REQUIRED;
        }

        public boolean K() {
            if (this.f67999i != c.STRING) {
                return false;
            }
            if (q().w().E3() || a().z() == g.b.PROTO3) {
                return true;
            }
            return a().v().w1();
        }

        public final void L(final H.C12649n proto) {
            this.f67993c = proto;
        }

        @Override
        public H.C12649n d() {
            return this.f67993c;
        }

        @Override
        public A2.b U1() {
            return f67991p[this.f67999i.ordinal()];
        }

        @Override
        public A2.c V1() {
            return U1().a();
        }

        @Override
        public boolean Z1() {
            return this.f67993c.getLabel() == H.C12649n.c.LABEL_REPEATED;
        }

        @Override
        public g a() {
            return this.f67996f;
        }

        @Override
        public String b() {
            return this.f67994d;
        }

        @Override
        public String c() {
            return this.f67993c.getName();
        }

        @Override
        public int getNumber() {
            return this.f67993c.getNumber();
        }

        @Override
        public boolean i2() {
            if (I()) {
                return a().z() == g.b.PROTO2 ? y().k0() : !y().m2() || y().k0();
            }
            return false;
        }

        @Override
        public int compareTo(final f other) {
            if (other.f68000j == this.f68000j) {
                return getNumber() - other.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        @Override
        public InterfaceC12659b1.a n(InterfaceC12659b1.a to, InterfaceC12659b1 from) {
            return ((Y0.a) to).mergeFrom((Y0) from);
        }

        public k o() {
            return this.f68002l;
        }

        public b q() {
            return this.f68000j;
        }

        public Object r() {
            if (v() != b.MESSAGE) {
                return this.f68004n;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        @Override
        public d W1() {
            if (v() == b.ENUM) {
                return this.f68003m;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.f67994d));
        }

        public b t() {
            if (F()) {
                return this.f67997g;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.f67994d));
        }

        public String toString() {
            return b();
        }

        public int u() {
            return this.f67992b;
        }

        public b v() {
            return this.f67999i.b();
        }

        public String w() {
            String str = this.f67995e;
            if (str != null) {
                return str;
            }
            if (this.f67993c.w3()) {
                String v02 = this.f67993c.v0();
                this.f67995e = v02;
                return v02;
            }
            String m10 = m(this.f67993c.getName());
            this.f67995e = m10;
            return m10;
        }

        public b x() {
            if (v() == b.MESSAGE) {
                return this.f68001k;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.f67994d));
        }

        public H.C12651p y() {
            return this.f67993c.getOptions();
        }

        public k z() {
            k kVar = this.f68002l;
            if (kVar == null || kVar.t()) {
                return null;
            }
            return this.f68002l;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public f(final H.C12649n proto, final g file, final b parent, final int index, final boolean isExtension) throws DescriptorValidationException {
            super(r0);
            a aVar = null;
            this.f67992b = index;
            this.f67993c = proto;
            this.f67994d = Descriptors.k(file, parent, proto.getName());
            this.f67996f = file;
            if (proto.j2()) {
                this.f67999i = c.d(proto.getType());
            }
            this.f67998h = proto.c2();
            if (getNumber() > 0) {
                if (isExtension) {
                    if (proto.W3()) {
                        this.f68000j = null;
                        if (parent != null) {
                            this.f67997g = parent;
                        } else {
                            this.f67997g = null;
                        }
                        if (!proto.z5()) {
                            this.f68002l = null;
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index set for extension field.", aVar);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.", aVar);
                    }
                } else if (!proto.W3()) {
                    this.f68000j = parent;
                    if (proto.z5()) {
                        if (proto.J() >= 0 && proto.J() < parent.d().O0()) {
                            k kVar = parent.v().get(proto.J());
                            this.f68002l = kVar;
                            k.i(kVar);
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index is out of range for type " + parent.c(), aVar);
                        }
                    } else {
                        this.f68002l = null;
                    }
                    this.f67997g = null;
                } else {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.", aVar);
                }
                file.f68012i.b(this);
                return;
            }
            throw new DescriptorValidationException(this, "Field numbers must be positive integers.", aVar);
        }
    }

    public static abstract class h {
        public h(a aVar) {
            this();
        }

        public abstract g a();

        public abstract String b();

        public abstract String c();

        public abstract Y0 d();

        public h() {
        }
    }

    public static final class i extends h {

        public final int f68013b;

        public H.B f68014c;

        public final String f68015d;

        public final g f68016e;

        public final l f68017f;

        public b f68018g;

        public b f68019h;

        public i(H.B b10, g gVar, l lVar, int i10, a aVar) throws DescriptorValidationException {
            this(b10, gVar, lVar, i10);
        }

        public void h() throws DescriptorValidationException {
            c cVar = a().f68012i;
            String inputType = this.f68014c.getInputType();
            c.b bVar = c.b.TYPES_ONLY;
            h h10 = cVar.h(inputType, this, bVar);
            a aVar = null;
            if (!(h10 instanceof b)) {
                throw new DescriptorValidationException(this, '\"' + this.f68014c.getInputType() + "\" is not a message type.", aVar);
            }
            this.f68018g = (b) h10;
            h h11 = a().f68012i.h(this.f68014c.L1(), this, bVar);
            if (h11 instanceof b) {
                this.f68019h = (b) h11;
                return;
            }
            throw new DescriptorValidationException(this, '\"' + this.f68014c.L1() + "\" is not a message type.", aVar);
        }

        @Override
        public g a() {
            return this.f68016e;
        }

        @Override
        public String b() {
            return this.f68015d;
        }

        @Override
        public String c() {
            return this.f68014c.getName();
        }

        public int i() {
            return this.f68013b;
        }

        public b j() {
            return this.f68018g;
        }

        public H.D k() {
            return this.f68014c.getOptions();
        }

        public b o() {
            return this.f68019h;
        }

        public l q() {
            return this.f68017f;
        }

        public boolean r() {
            return this.f68014c.i6();
        }

        public boolean s() {
            return this.f68014c.K5();
        }

        public final void t(final H.B proto) {
            this.f68014c = proto;
        }

        @Override
        public H.B d() {
            return this.f68014c;
        }

        public i(final H.B proto, final g file, final l parent, final int index) throws DescriptorValidationException {
            super(null);
            this.f68013b = index;
            this.f68014c = proto;
            this.f68016e = file;
            this.f68017f = parent;
            this.f68015d = parent.b() + '.' + proto.getName();
            file.f68012i.b(this);
        }
    }

    public interface j<T> {
        int a(T t10);
    }

    public static final class k extends h {

        public final int f68020b;

        public H.F f68021c;

        public final String f68022d;

        public final g f68023e;

        public b f68024f;

        public int f68025g;

        public f[] f68026h;

        public k(H.F f10, g gVar, b bVar, int i10, a aVar) {
            this(f10, gVar, bVar, i10);
        }

        public static int i(k kVar) {
            int i10 = kVar.f68025g;
            kVar.f68025g = i10 + 1;
            return i10;
        }

        @Override
        public g a() {
            return this.f68023e;
        }

        @Override
        public String b() {
            return this.f68022d;
        }

        @Override
        public String c() {
            return this.f68021c.getName();
        }

        public b k() {
            return this.f68024f;
        }

        public f m(int index) {
            return this.f68026h[index];
        }

        public int o() {
            return this.f68025g;
        }

        public List<f> q() {
            return Collections.unmodifiableList(Arrays.asList(this.f68026h));
        }

        public int r() {
            return this.f68020b;
        }

        public H.C1027H s() {
            return this.f68021c.getOptions();
        }

        public boolean t() {
            f[] fVarArr = this.f68026h;
            return fVarArr.length == 1 && fVarArr[0].f67998h;
        }

        public final void u(final H.F proto) {
            this.f68021c = proto;
        }

        @Override
        public H.F d() {
            return this.f68021c;
        }

        public k(final H.F proto, final g file, final b parent, final int index) {
            super(null);
            this.f68021c = proto;
            this.f68022d = Descriptors.k(file, parent, proto.getName());
            this.f68023e = file;
            this.f68020b = index;
            this.f68024f = parent;
            this.f68025g = 0;
        }
    }

    public static final class l extends h {

        public final int f68027b;

        public H.J f68028c;

        public final String f68029d;

        public final g f68030e;

        public i[] f68031f;

        public l(H.J j10, g gVar, int i10, a aVar) throws DescriptorValidationException {
            this(j10, gVar, i10);
        }

        public void h() throws DescriptorValidationException {
            for (i iVar : this.f68031f) {
                iVar.h();
            }
        }

        @Override
        public g a() {
            return this.f68030e;
        }

        @Override
        public String b() {
            return this.f68029d;
        }

        @Override
        public String c() {
            return this.f68028c.getName();
        }

        public i i(final String name) {
            h c10 = this.f68030e.f68012i.c(this.f68029d + '.' + name);
            if (c10 instanceof i) {
                return (i) c10;
            }
            return null;
        }

        public int j() {
            return this.f68027b;
        }

        public List<i> k() {
            return Collections.unmodifiableList(Arrays.asList(this.f68031f));
        }

        public H.L o() {
            return this.f68028c.getOptions();
        }

        public final void q(final H.J proto) {
            this.f68028c = proto;
            int i10 = 0;
            while (true) {
                i[] iVarArr = this.f68031f;
                if (i10 >= iVarArr.length) {
                    return;
                }
                iVarArr[i10].t(proto.f6(i10));
                i10++;
            }
        }

        @Override
        public H.J d() {
            return this.f68028c;
        }

        public l(final H.J proto, final g file, final int index) throws DescriptorValidationException {
            super(null);
            this.f68027b = index;
            this.f68028c = proto;
            this.f68029d = Descriptors.k(file, null, proto.getName());
            this.f68030e = file;
            this.f68031f = new i[proto.L5()];
            for (int i10 = 0; i10 < proto.L5(); i10++) {
                this.f68031f[i10] = new i(proto.f6(i10), file, this, i10, null);
            }
            file.f68012i.b(this);
        }
    }

    public static <T> T j(T[] array, int size, j<T> getter, int number) {
        int i10 = size - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) / 2;
            T t10 = array[i12];
            int a10 = getter.a(t10);
            if (number < a10) {
                i10 = i12 - 1;
            } else {
                if (number <= a10) {
                    return t10;
                }
                i11 = i12 + 1;
            }
        }
        return null;
    }

    public static String k(final g file, final b parent, final String name) {
        if (parent != null) {
            return parent.b() + '.' + name;
        }
        String w10 = file.w();
        if (w10.isEmpty()) {
            return name;
        }
        return w10 + '.' + name;
    }

    public static final class g extends h {

        public H.r f68005b;

        public final b[] f68006c;

        public final d[] f68007d;

        public final l[] f68008e;

        public final f[] f68009f;

        public final g[] f68010g;

        public final g[] f68011h;

        public final c f68012i;

        @Deprecated
        public interface a {
            C12658b0 a(g root);
        }

        public enum b {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");

            private final String name;

            b(String name) {
                this.name = name;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public g(final H.r proto, final g[] dependencies, final c pool, boolean allowUnknownDependencies) throws DescriptorValidationException {
            super(r0);
            b[] bVarArr;
            d[] dVarArr;
            l[] lVarArr;
            f[] fVarArr;
            a aVar = null;
            this.f68012i = pool;
            this.f68005b = proto;
            this.f68010g = (g[]) dependencies.clone();
            HashMap hashMap = new HashMap();
            for (g gVar : dependencies) {
                hashMap.put(gVar.c(), gVar);
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < proto.n1(); i10++) {
                int g42 = proto.g4(i10);
                if (g42 >= 0 && g42 < proto.d4()) {
                    String f42 = proto.f4(g42);
                    g gVar2 = (g) hashMap.get(f42);
                    if (gVar2 != null) {
                        arrayList.add(gVar2);
                    } else if (!allowUnknownDependencies) {
                        throw new DescriptorValidationException(this, "Invalid public dependency: " + f42, aVar);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Invalid public dependency index.", aVar);
                }
            }
            g[] gVarArr = new g[arrayList.size()];
            this.f68011h = gVarArr;
            arrayList.toArray(gVarArr);
            pool.a(w(), this);
            if (proto.z4() > 0) {
                bVarArr = new b[proto.z4()];
            } else {
                bVarArr = Descriptors.f67946c;
            }
            this.f68006c = bVarArr;
            for (int i11 = 0; i11 < proto.z4(); i11++) {
                this.f68006c[i11] = new b(proto.j4(i11), this, null, i11, null);
            }
            if (proto.f0() > 0) {
                dVarArr = new d[proto.f0()];
            } else {
                dVarArr = Descriptors.f67948e;
            }
            this.f68007d = dVarArr;
            for (int i12 = 0; i12 < proto.f0(); i12++) {
                this.f68007d[i12] = new d(proto.i0(i12), this, null, i12, null);
            }
            if (proto.e2() > 0) {
                lVarArr = new l[proto.e2()];
            } else {
                lVarArr = Descriptors.f67949f;
            }
            this.f68008e = lVarArr;
            for (int i13 = 0; i13 < proto.e2(); i13++) {
                this.f68008e[i13] = new l(proto.H1(i13), this, i13, aVar);
            }
            if (proto.P() > 0) {
                fVarArr = new f[proto.P()];
            } else {
                fVarArr = Descriptors.f67947d;
            }
            this.f68009f = fVarArr;
            for (int i14 = 0; i14 < proto.P(); i14++) {
                this.f68009f[i14] = new f(proto.u0(i14), this, null, i14, true, null);
            }
        }

        public static g A(final String[] descriptorDataParts, final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames) {
            return B(descriptorDataParts, j(descriptorOuterClass, dependencyClassNames, dependencyFileNames));
        }

        public static g B(final String[] descriptorDataParts, final g[] dependencies) {
            try {
                H.r j72 = H.r.j7(F(descriptorDataParts));
                try {
                    return h(j72, dependencies, true);
                } catch (DescriptorValidationException e10) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + j72.getName() + "\".", e10);
                }
            } catch (InvalidProtocolBufferException e11) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e11);
            }
        }

        @Deprecated
        public static void C(final String[] descriptorDataParts, final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames, final a descriptorAssigner) {
            D(descriptorDataParts, j(descriptorOuterClass, dependencyClassNames, dependencyFileNames), descriptorAssigner);
        }

        @Deprecated
        public static void D(final String[] descriptorDataParts, final g[] dependencies, final a descriptorAssigner) {
            byte[] F10 = F(descriptorDataParts);
            try {
                H.r j72 = H.r.j7(F10);
                try {
                    g h10 = h(j72, dependencies, true);
                    C12658b0 a10 = descriptorAssigner.a(h10);
                    if (a10 != null) {
                        try {
                            h10.G(H.r.k7(F10, a10));
                        } catch (InvalidProtocolBufferException e10) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
                        }
                    }
                } catch (DescriptorValidationException e11) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + j72.getName() + "\".", e11);
                }
            } catch (InvalidProtocolBufferException e12) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e12);
            }
        }

        public static void E(g descriptor, C12658b0 registry) {
            try {
                descriptor.G(H.r.c7(descriptor.f68005b.toByteString(), registry));
            } catch (InvalidProtocolBufferException e10) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
            }
        }

        public static byte[] F(final String[] strings) {
            if (strings.length == 1) {
                return strings[0].getBytes(D0.f67923c);
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : strings) {
                sb2.append(str);
            }
            return sb2.toString().getBytes(D0.f67923c);
        }

        public static g g(H.r proto, g[] dependencies) throws DescriptorValidationException {
            return h(proto, dependencies, false);
        }

        public static g h(H.r proto, g[] dependencies, boolean allowUnknownDependencies) throws DescriptorValidationException {
            g gVar = new g(proto, dependencies, new c(dependencies, allowUnknownDependencies), allowUnknownDependencies);
            gVar.i();
            return gVar;
        }

        private void i() throws DescriptorValidationException {
            for (b bVar : this.f68006c) {
                bVar.h();
            }
            for (l lVar : this.f68008e) {
                lVar.h();
            }
            for (f fVar : this.f68009f) {
                fVar.k();
            }
        }

        public static g[] j(final Class<?> descriptorOuterClass, final String[] dependencyClassNames, final String[] dependencyFileNames) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < dependencyClassNames.length; i10++) {
                try {
                    arrayList.add((g) descriptorOuterClass.getClassLoader().loadClass(dependencyClassNames[i10]).getField("descriptor").get(null));
                } catch (Exception unused) {
                    Descriptors.f67944a.warning("Descriptors for \"" + dependencyFileNames[i10] + "\" can not be found.");
                }
            }
            return (g[]) arrayList.toArray(new g[0]);
        }

        public final void G(final H.r proto) {
            this.f68005b = proto;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                b[] bVarArr = this.f68006c;
                if (i11 >= bVarArr.length) {
                    break;
                }
                bVarArr[i11].C(proto.j4(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                d[] dVarArr = this.f68007d;
                if (i12 >= dVarArr.length) {
                    break;
                }
                dVarArr[i12].x(proto.i0(i12));
                i12++;
            }
            int i13 = 0;
            while (true) {
                l[] lVarArr = this.f68008e;
                if (i13 >= lVarArr.length) {
                    break;
                }
                lVarArr[i13].q(proto.H1(i13));
                i13++;
            }
            while (true) {
                f[] fVarArr = this.f68009f;
                if (i10 >= fVarArr.length) {
                    return;
                }
                fVarArr[i10].L(proto.u0(i10));
                i10++;
            }
        }

        public boolean H() {
            return z() == b.PROTO3;
        }

        @Override
        public H.r d() {
            return this.f68005b;
        }

        @Override
        public g a() {
            return this;
        }

        @Override
        public String b() {
            return this.f68005b.getName();
        }

        @Override
        public String c() {
            return this.f68005b.getName();
        }

        public d k(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String w10 = w();
            if (!w10.isEmpty()) {
                name = w10 + '.' + name;
            }
            h c10 = this.f68012i.c(name);
            if ((c10 instanceof d) && c10.a() == this) {
                return (d) c10;
            }
            return null;
        }

        public f m(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String w10 = w();
            if (!w10.isEmpty()) {
                name = w10 + '.' + name;
            }
            h c10 = this.f68012i.c(name);
            if ((c10 instanceof f) && c10.a() == this) {
                return (f) c10;
            }
            return null;
        }

        public b o(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String w10 = w();
            if (!w10.isEmpty()) {
                name = w10 + '.' + name;
            }
            h c10 = this.f68012i.c(name);
            if ((c10 instanceof b) && c10.a() == this) {
                return (b) c10;
            }
            return null;
        }

        public l q(String name) {
            if (name.indexOf(46) != -1) {
                return null;
            }
            String w10 = w();
            if (!w10.isEmpty()) {
                name = w10 + '.' + name;
            }
            h c10 = this.f68012i.c(name);
            if ((c10 instanceof l) && c10.a() == this) {
                return (l) c10;
            }
            return null;
        }

        public List<g> r() {
            return Collections.unmodifiableList(Arrays.asList(this.f68010g));
        }

        public List<d> s() {
            return Collections.unmodifiableList(Arrays.asList(this.f68007d));
        }

        public List<f> t() {
            return Collections.unmodifiableList(Arrays.asList(this.f68009f));
        }

        public List<b> u() {
            return Collections.unmodifiableList(Arrays.asList(this.f68006c));
        }

        public H.v v() {
            return this.f68005b.getOptions();
        }

        public String w() {
            return this.f68005b.getPackage();
        }

        public List<g> x() {
            return Collections.unmodifiableList(Arrays.asList(this.f68011h));
        }

        public List<l> y() {
            return Collections.unmodifiableList(Arrays.asList(this.f68008e));
        }

        public b z() {
            b bVar = b.PROTO3;
            return bVar.name.equals(this.f68005b.m()) ? bVar : b.PROTO2;
        }

        public g(String packageName, b message) throws DescriptorValidationException {
            super(null);
            c cVar = new c(new g[0], true);
            this.f68012i = cVar;
            this.f68005b = H.r.V6().g8(message.b() + ".placeholder.proto").k8(packageName).K6(message.d()).build();
            this.f68010g = new g[0];
            this.f68011h = new g[0];
            this.f68006c = new b[]{message};
            this.f68007d = Descriptors.f67948e;
            this.f68008e = Descriptors.f67949f;
            this.f68009f = Descriptors.f67947d;
            cVar.a(packageName, this);
            cVar.b(message);
        }
    }
}
