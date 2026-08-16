package com.google.protobuf;

import com.bumptech.glide.load.engine.GlideException;
import com.google.protobuf.C12658b0;
import com.google.protobuf.C12673f1;
import com.google.protobuf.Descriptors;
import com.google.protobuf.P;
import com.google.protobuf.Y0;
import com.google.protobuf.d2;
import com.google.protobuf.r2;
import java.io.IOException;
import java.lang.Character;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.luaj.vm2.LuaDouble;
import org.openjdk.tools.doclint.DocLint;

public final class TextFormat {

    public static final String f68919b = "\t ";

    public static final Logger f68918a = Logger.getLogger(TextFormat.class.getName());

    public static final b f68920c = b.n().a();

    public static class InvalidEscapeSequenceException extends IOException {
        private static final long serialVersionUID = -8164033650142593304L;

        public InvalidEscapeSequenceException(final String description) {
            super(description);
        }
    }

    public static class ParseException extends IOException {
        private static final long serialVersionUID = 3196188060225107702L;
        private final int column;
        private final int line;

        public ParseException(final String message) {
            this(-1, -1, message);
        }

        public int getColumn() {
            return this.column;
        }

        public int getLine() {
            return this.line;
        }

        public ParseException(final int line, final int column, final String message) {
            super(Integer.toString(line) + b3.s.f32937c + column + ": " + message);
            this.line = line;
            this.column = column;
        }
    }

    public static class UnknownFieldParseException extends ParseException {
        private final String unknownField;

        public UnknownFieldParseException(final String message) {
            this(-1, -1, "", message);
        }

        public String getUnknownField() {
            return this.unknownField;
        }

        public UnknownFieldParseException(final int line, final int column, final String unknownField, final String message) {
            super(line, column, message);
            this.unknownField = unknownField;
        }
    }

    public static class a {

        public static final int[] f68921a;

        public static final int[] f68922b;

        static {
            int[] iArr = new int[Descriptors.f.c.values().length];
            f68922b = iArr;
            try {
                iArr[Descriptors.f.c.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68922b[Descriptors.f.c.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68922b[Descriptors.f.c.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f68922b[Descriptors.f.c.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f68922b[Descriptors.f.c.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f68922b[Descriptors.f.c.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f68922b[Descriptors.f.c.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f68922b[Descriptors.f.c.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f68922b[Descriptors.f.c.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f68922b[Descriptors.f.c.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f68922b[Descriptors.f.c.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f68922b[Descriptors.f.c.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f68922b[Descriptors.f.c.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f68922b[Descriptors.f.c.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f68922b[Descriptors.f.c.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f68922b[Descriptors.f.c.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f68922b[Descriptors.f.c.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f68922b[Descriptors.f.c.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[Descriptors.f.b.values().length];
            f68921a = iArr2;
            try {
                iArr2[Descriptors.f.b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f68921a[Descriptors.f.b.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f68921a[Descriptors.f.b.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f68921a[Descriptors.f.b.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public static class b {

        public static final int f68923g = 4096;

        public final l2 f68924a;

        public final boolean f68925b;

        public final boolean f68926c;

        public final boolean f68927d;

        public final EnumC1034b f68928e;

        public d2.b f68929f;

        public static class a {

            public boolean f68930a = false;

            public boolean f68931b = false;

            public boolean f68932c = false;

            public EnumC1034b f68933d = EnumC1034b.ALLOW_SINGULAR_OVERWRITES;

            public d2.b f68934e = null;

            public l2 f68935f = l2.d();

            public b a() {
                return new b(this.f68935f, this.f68930a, this.f68931b, this.f68932c, this.f68933d, this.f68934e, null);
            }

            public a b(boolean allowUnknownExtensions) {
                this.f68932c = allowUnknownExtensions;
                return this;
            }

            public a c(boolean allowUnknownFields) {
                this.f68930a = allowUnknownFields;
                return this;
            }

            public a d(d2.b parseInfoTreeBuilder) {
                this.f68934e = parseInfoTreeBuilder;
                return this;
            }

            public a e(EnumC1034b p10) {
                this.f68933d = p10;
                return this;
            }

            public a f(l2 typeRegistry) {
                this.f68935f = typeRegistry;
                return this;
            }
        }

        public enum EnumC1034b {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        public static final class c {

            public final String f68936a;

            public final a f68937b;

            public enum a {
                FIELD,
                EXTENSION
            }

            public c(String message, a type) {
                this.f68936a = message;
                this.f68937b = type;
            }
        }

        public b(l2 l2Var, boolean z10, boolean z11, boolean z12, EnumC1034b enumC1034b, d2.b bVar, a aVar) {
            this(l2Var, z10, z11, z12, enumC1034b, bVar);
        }

        public static a n() {
            return new a();
        }

        public static StringBuilder s(final Readable input) throws IOException {
            StringBuilder sb2 = new StringBuilder();
            CharBuffer allocate = CharBuffer.allocate(4096);
            while (true) {
                int read = input.read(allocate);
                if (read == -1) {
                    return sb2;
                }
                F0.b(allocate);
                sb2.append((CharSequence) allocate, 0, read);
            }
        }

        public final void a(final List<c> unknownFields) throws ParseException {
            int i10;
            if (unknownFields.isEmpty()) {
                return;
            }
            StringBuilder sb2 = new StringBuilder("Input contains unknown fields and/or extensions:");
            for (c cVar : unknownFields) {
                sb2.append('\n');
                sb2.append(cVar.f68936a);
            }
            if (this.f68925b) {
                TextFormat.f68918a.warning(sb2.toString());
                return;
            }
            if (this.f68927d) {
                Iterator<c> it = unknownFields.iterator();
                i10 = 0;
                while (it.hasNext()) {
                    if (it.next().f68937b != c.a.FIELD) {
                        i10++;
                    }
                }
                TextFormat.f68918a.warning(sb2.toString());
                return;
            }
            i10 = 0;
            String[] split = unknownFields.get(i10).f68936a.split(b3.s.f32937c);
            throw new ParseException(Integer.parseInt(split[0]), Integer.parseInt(split[1]), sb2.toString());
        }

        public final void b(e eVar, C12658b0 c12658b0, C12673f1.e eVar2, Descriptors.f fVar, C12658b0.c cVar, d2.b bVar, List<c> list) throws ParseException {
            String str;
            Object b10;
            if (this.f68928e == EnumC1034b.FORBID_SINGULAR_OVERWRITES && !fVar.Z1()) {
                if (eVar2.hasField(fVar)) {
                    throw eVar.A("Non-repeated field \"" + fVar.b() + "\" cannot be overwritten.");
                }
                if (fVar.o() != null && eVar2.hasOneof(fVar.o())) {
                    Descriptors.k o10 = fVar.o();
                    throw eVar.A("Field \"" + fVar.b() + "\" is specified along with field \"" + eVar2.getOneofFieldDescriptor(o10).b() + "\", another member of oneof \"" + o10.c() + "\".");
                }
            }
            Object obj = null;
            if (fVar.v() == Descriptors.f.b.MESSAGE) {
                if (eVar.C("<")) {
                    str = ">";
                } else {
                    eVar.c("{");
                    str = VectorFormat.DEFAULT_SUFFIX;
                }
                String str2 = str;
                if (fVar.x().b().equals("google.protobuf.Any") && eVar.C("[")) {
                    C12673f1.e a10 = eVar2.a(fVar, P.r6(fVar.x()));
                    k(eVar, c12658b0, a10, bVar, list, fVar.x());
                    b10 = a10.b();
                    eVar.c(str2);
                } else {
                    C12673f1.e a11 = eVar2.a(fVar, cVar != null ? cVar.f69059b : null);
                    while (!eVar.C(str2)) {
                        if (eVar.b()) {
                            throw eVar.z("Expected \"" + str2 + "\".");
                        }
                        l(eVar, c12658b0, a11, bVar, list);
                    }
                    b10 = a11.b();
                }
                obj = b10;
            } else {
                switch (a.f68922b[fVar.A().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                        obj = Integer.valueOf(eVar.j());
                        break;
                    case 4:
                    case 5:
                    case 6:
                        obj = Long.valueOf(eVar.k());
                        break;
                    case 7:
                        obj = Boolean.valueOf(eVar.d());
                        break;
                    case 8:
                        obj = Float.valueOf(eVar.h());
                        break;
                    case 9:
                        obj = Double.valueOf(eVar.g());
                        break;
                    case 10:
                    case 11:
                        obj = Integer.valueOf(eVar.m());
                        break;
                    case 12:
                    case 13:
                        obj = Long.valueOf(eVar.n());
                        break;
                    case 14:
                        obj = eVar.l();
                        break;
                    case 15:
                        obj = eVar.e();
                        break;
                    case 16:
                        Descriptors.d W12 = fVar.W1();
                        if (eVar.x()) {
                            int j10 = eVar.j();
                            obj = W12.findValueByNumber(j10);
                            if (obj == null) {
                                String str3 = "Enum type \"" + W12.b() + "\" has no value with number " + j10 + '.';
                                if (this.f68926c) {
                                    TextFormat.f68918a.warning(str3);
                                    return;
                                }
                                throw eVar.A("Enum type \"" + W12.b() + "\" has no value with number " + j10 + '.');
                            }
                        } else {
                            String i10 = eVar.i();
                            obj = W12.h(i10);
                            if (obj == null) {
                                String str4 = "Enum type \"" + W12.b() + "\" has no value named \"" + i10 + "\".";
                                if (!this.f68926c) {
                                    throw eVar.A(str4);
                                }
                                TextFormat.f68918a.warning(str4);
                                return;
                            }
                        }
                        break;
                    case 17:
                    case 18:
                        throw new RuntimeException("Can't get here.");
                }
            }
            if (fVar.Z1()) {
                eVar2.addRepeatedField(fVar, obj);
            } else {
                eVar2.setField(fVar, obj);
            }
        }

        public final void c(final e tokenizer, final C12658b0 extensionRegistry, final C12673f1.e target, final Descriptors.f field, final C12658b0.c extension, final d2.b parseTreeBuilder, List<c> unknownFields) throws ParseException {
            if (!field.Z1() || !tokenizer.C("[")) {
                b(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields);
            } else {
                if (tokenizer.C("]")) {
                    return;
                }
                while (true) {
                    b(tokenizer, extensionRegistry, target, field, extension, parseTreeBuilder, unknownFields);
                    if (tokenizer.C("]")) {
                        return;
                    } else {
                        tokenizer.c(DocLint.SEPARATOR);
                    }
                }
            }
        }

        public final String d(e tokenizer) throws ParseException {
            if (!tokenizer.C("[")) {
                return tokenizer.i();
            }
            String i10 = tokenizer.i();
            while (tokenizer.C(".")) {
                i10 = i10 + "." + tokenizer.i();
            }
            if (tokenizer.C("/")) {
                i10 = i10 + "/" + tokenizer.i();
                while (tokenizer.C(".")) {
                    i10 = i10 + "." + tokenizer.i();
                }
            }
            tokenizer.c("]");
            return i10;
        }

        public final void e(e tokenizer, Descriptors.b immediateMessageType, String fieldName) {
        }

        public final void f(e tokenizer, Descriptors.b type) throws ParseException {
            boolean C10 = tokenizer.C(b3.s.f32937c);
            if (tokenizer.w("[")) {
                q(tokenizer, C10, type);
            } else if (!C10 || tokenizer.w("{") || tokenizer.w("<")) {
                p(tokenizer, type);
            } else {
                r(tokenizer);
            }
        }

        public void g(final CharSequence input, final C12658b0 extensionRegistry, final Y0.a builder) throws ParseException {
            e eVar = new e(input, null);
            C12673f1.b bVar = new C12673f1.b(builder);
            ArrayList arrayList = new ArrayList();
            while (!eVar.b()) {
                m(eVar, extensionRegistry, bVar, arrayList);
            }
            a(arrayList);
        }

        public void h(final CharSequence input, final Y0.a builder) throws ParseException {
            g(input, C12658b0.v(), builder);
        }

        public void i(final Readable input, final C12658b0 extensionRegistry, final Y0.a builder) throws IOException {
            g(s(input), extensionRegistry, builder);
        }

        public void j(final Readable input, final Y0.a builder) throws IOException {
            i(input, C12658b0.v(), builder);
        }

        public final void k(final e tokenizer, final C12658b0 extensionRegistry, C12673f1.e target, final d2.b parseTreeBuilder, List<c> unknownFields, Descriptors.b anyDescriptor) throws ParseException {
            String str;
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                sb2.append(tokenizer.i());
                if (tokenizer.C("]")) {
                    e(tokenizer, anyDescriptor, sb2.toString());
                    tokenizer.C(b3.s.f32937c);
                    if (tokenizer.C("<")) {
                        str = ">";
                    } else {
                        tokenizer.c("{");
                        str = VectorFormat.DEFAULT_SUFFIX;
                    }
                    String str2 = str;
                    String sb3 = sb2.toString();
                    try {
                        Descriptors.b c10 = this.f68924a.c(sb3);
                        if (c10 == null) {
                            throw tokenizer.z("Unable to parse Any of type: " + sb3 + ". Please make sure that the TypeRegistry contains the descriptors for the given types.");
                        }
                        P.c newBuilderForType = P.r6(c10).newBuilderForType();
                        C12673f1.b bVar = new C12673f1.b(newBuilderForType);
                        while (!tokenizer.C(str2)) {
                            l(tokenizer, extensionRegistry, bVar, parseTreeBuilder, unknownFields);
                        }
                        target.setField(anyDescriptor.j("type_url"), sb2.toString());
                        target.setField(anyDescriptor.j("value"), newBuilderForType.build().toByteString());
                        return;
                    } catch (InvalidProtocolBufferException unused) {
                        throw tokenizer.z("Invalid valid type URL. Found: " + sb3);
                    }
                }
                if (tokenizer.C("/")) {
                    sb2.append("/");
                } else {
                    if (!tokenizer.C(".")) {
                        throw tokenizer.A("Expected a valid type URL.");
                    }
                    sb2.append(".");
                }
            }
        }

        public final void l(final e tokenizer, final C12658b0 extensionRegistry, final C12673f1.e target, d2.b parseTreeBuilder, List<c> unknownFields) throws ParseException {
            String i10;
            Descriptors.f fVar;
            C12658b0.c cVar;
            Descriptors.f fVar2;
            int s10 = tokenizer.s();
            int p10 = tokenizer.p();
            Descriptors.b descriptorForType = target.getDescriptorForType();
            if ("google.protobuf.Any".equals(descriptorForType.b()) && tokenizer.C("[")) {
                k(tokenizer, extensionRegistry, target, parseTreeBuilder, unknownFields, descriptorForType);
                return;
            }
            if (tokenizer.C("[")) {
                StringBuilder sb2 = new StringBuilder(tokenizer.i());
                while (tokenizer.C(".")) {
                    sb2.append('.');
                    sb2.append(tokenizer.i());
                }
                i10 = sb2.toString();
                C12658b0.c k10 = target.k(extensionRegistry, i10);
                if (k10 == null) {
                    unknownFields.add(new c((tokenizer.u() + 1) + b3.s.f32937c + (tokenizer.t() + 1) + ":\t" + descriptorForType.b() + ".[" + i10 + "]", c.a.EXTENSION));
                    fVar2 = null;
                } else {
                    if (k10.f69058a.q() != descriptorForType) {
                        throw tokenizer.A("Extension \"" + i10 + "\" does not extend message type \"" + descriptorForType.b() + "\".");
                    }
                    fVar2 = k10.f69058a;
                }
                tokenizer.c("]");
                cVar = k10;
                fVar = fVar2;
            } else {
                i10 = tokenizer.i();
                Descriptors.f j10 = descriptorForType.j(i10);
                if (j10 == null && (j10 = descriptorForType.j(i10.toLowerCase(Locale.US))) != null && j10.A() != Descriptors.f.c.GROUP) {
                    j10 = null;
                }
                if (j10 != null && j10.A() == Descriptors.f.c.GROUP && !j10.x().c().equals(i10)) {
                    j10 = null;
                }
                if (j10 == null) {
                    unknownFields.add(new c((tokenizer.u() + 1) + b3.s.f32937c + (tokenizer.t() + 1) + ":\t" + descriptorForType.b() + "." + i10, c.a.FIELD));
                }
                fVar = j10;
                cVar = null;
            }
            if (fVar == null) {
                e(tokenizer, descriptorForType, i10);
                f(tokenizer, descriptorForType);
                return;
            }
            if (fVar.v() == Descriptors.f.b.MESSAGE) {
                e(tokenizer, descriptorForType, fVar.b());
                tokenizer.C(b3.s.f32937c);
                if (parseTreeBuilder != null) {
                    c(tokenizer, extensionRegistry, target, fVar, cVar, parseTreeBuilder.b(fVar), unknownFields);
                } else {
                    c(tokenizer, extensionRegistry, target, fVar, cVar, parseTreeBuilder, unknownFields);
                }
            } else {
                e(tokenizer, descriptorForType, fVar.b());
                tokenizer.c(b3.s.f32937c);
                c(tokenizer, extensionRegistry, target, fVar, cVar, parseTreeBuilder, unknownFields);
            }
            if (parseTreeBuilder != null) {
                parseTreeBuilder.c(fVar, e2.a(s10, p10));
            }
            if (tokenizer.C(";")) {
                return;
            }
            tokenizer.C(DocLint.SEPARATOR);
        }

        public final void m(final e tokenizer, final C12658b0 extensionRegistry, final C12673f1.e target, List<c> unknownFields) throws ParseException {
            l(tokenizer, extensionRegistry, target, this.f68929f, unknownFields);
        }

        public final void o(e tokenizer, Descriptors.b type) throws ParseException {
            e(tokenizer, type, d(tokenizer));
            f(tokenizer, type);
            if (tokenizer.C(";")) {
                return;
            }
            tokenizer.C(DocLint.SEPARATOR);
        }

        public final void p(e tokenizer, Descriptors.b type) throws ParseException {
            String str;
            if (tokenizer.C("<")) {
                str = ">";
            } else {
                tokenizer.c("{");
                str = VectorFormat.DEFAULT_SUFFIX;
            }
            while (!tokenizer.w(">") && !tokenizer.w(VectorFormat.DEFAULT_SUFFIX)) {
                o(tokenizer, type);
            }
            tokenizer.c(str);
        }

        public final void q(e tokenizer, boolean scalarAllowed, Descriptors.b type) throws ParseException {
            if (!tokenizer.C("[") || tokenizer.C("]")) {
                return;
            }
            while (true) {
                if (tokenizer.w("{") || tokenizer.w("<")) {
                    p(tokenizer, type);
                } else {
                    if (!scalarAllowed) {
                        throw tokenizer.z("Invalid repeated scalar field: missing \":\" before \"[\".");
                    }
                    r(tokenizer);
                }
                if (tokenizer.C("]")) {
                    return;
                } else {
                    tokenizer.c(DocLint.SEPARATOR);
                }
            }
        }

        public final void r(e tokenizer) throws ParseException {
            if (!tokenizer.H()) {
                if (tokenizer.F() || tokenizer.G() || tokenizer.I() || tokenizer.D() || tokenizer.E()) {
                    return;
                }
                throw tokenizer.z("Invalid field value: " + tokenizer.f68955c);
            }
            do {
            } while (tokenizer.H());
        }

        public b(l2 typeRegistry, boolean allowUnknownFields, boolean allowUnknownEnumValues, boolean allowUnknownExtensions, EnumC1034b singularOverwritePolicy, d2.b parseInfoTreeBuilder) {
            this.f68924a = typeRegistry;
            this.f68925b = allowUnknownFields;
            this.f68926c = allowUnknownEnumValues;
            this.f68927d = allowUnknownExtensions;
            this.f68928e = singularOverwritePolicy;
            this.f68929f = parseInfoTreeBuilder;
        }
    }

    public static final class c {

        public static final c f68938c = new c(true, l2.d());

        public final boolean f68939a;

        public final l2 f68940b;

        public static class a implements Comparable<a> {

            public Object f68941b;

            public Q0 f68942c;

            public final Descriptors.f.b f68943d;

            public a(Object entry, Descriptors.f fieldDescriptor) {
                if (entry instanceof Q0) {
                    this.f68942c = (Q0) entry;
                } else {
                    this.f68941b = entry;
                }
                this.f68943d = b(fieldDescriptor);
            }

            public static Descriptors.f.b b(Descriptors.f fieldDescriptor) {
                return fieldDescriptor.x().s().get(0).v();
            }

            @Override
            public int compareTo(a b10) {
                if (d() == null || b10.d() == null) {
                    TextFormat.f68918a.info("Invalid key for map field.");
                    return -1;
                }
                int i10 = a.f68921a[this.f68943d.ordinal()];
                if (i10 == 1) {
                    Boolean bool = (Boolean) d();
                    bool.booleanValue();
                    Boolean bool2 = (Boolean) b10.d();
                    bool2.booleanValue();
                    return bool.compareTo(bool2);
                }
                if (i10 == 2) {
                    Long l10 = (Long) d();
                    l10.longValue();
                    Long l11 = (Long) b10.d();
                    l11.longValue();
                    return l10.compareTo(l11);
                }
                if (i10 == 3) {
                    Integer num = (Integer) d();
                    num.intValue();
                    Integer num2 = (Integer) b10.d();
                    num2.intValue();
                    return num.compareTo(num2);
                }
                if (i10 != 4) {
                    return 0;
                }
                String str = (String) d();
                String str2 = (String) b10.d();
                if (str == null && str2 == null) {
                    return 0;
                }
                if (str == null && str2 != null) {
                    return -1;
                }
                if (str == null || str2 != null) {
                    return str.compareTo(str2);
                }
                return 1;
            }

            public Object c() {
                Q0 q02 = this.f68942c;
                return q02 != null ? q02 : this.f68941b;
            }

            public Object d() {
                Q0 q02 = this.f68942c;
                if (q02 != null) {
                    return q02.s6();
                }
                return null;
            }
        }

        public c(boolean escapeNonAscii, l2 typeRegistry) {
            this.f68939a = escapeNonAscii;
            this.f68940b = typeRegistry;
        }

        public static void q(final int number, final int wireType, final List<?> values, final d generator) throws IOException {
            for (Object obj : values) {
                generator.d(String.valueOf(number));
                generator.d(": ");
                r(wireType, obj, generator);
                generator.a();
            }
        }

        public static void r(final int tag, final Object value, final d generator) throws IOException {
            int b10 = A2.b(tag);
            if (b10 == 0) {
                generator.d(TextFormat.T(((Long) value).longValue()));
                return;
            }
            if (b10 == 1) {
                generator.d(String.format(null, "0x%016x", (Long) value));
                return;
            }
            if (b10 != 2) {
                if (b10 == 3) {
                    s((r2) value, generator);
                    return;
                } else {
                    if (b10 == 5) {
                        generator.d(String.format(null, "0x%08x", (Integer) value));
                        return;
                    }
                    throw new IllegalArgumentException("Bad tag: " + tag);
                }
            }
            try {
                r2 d32 = r2.d3((AbstractC12724x) value);
                generator.d("{");
                generator.a();
                generator.b();
                s(d32, generator);
                generator.c();
                generator.d(VectorFormat.DEFAULT_SUFFIX);
            } catch (InvalidProtocolBufferException unused) {
                generator.d(JavadocConstants.ANCHOR_PREFIX_END);
                generator.d(TextFormat.e((AbstractC12724x) value));
                generator.d(JavadocConstants.ANCHOR_PREFIX_END);
            }
        }

        public static void s(final r2 unknownFields, final d generator) throws IOException {
            for (Map.Entry<Integer, r2.c> entry : unknownFields.a0().entrySet()) {
                int intValue = entry.getKey().intValue();
                r2.c value = entry.getValue();
                q(intValue, 0, value.t(), generator);
                q(intValue, 5, value.m(), generator);
                q(intValue, 1, value.n(), generator);
                q(intValue, 2, value.q(), generator);
                for (r2 r2Var : value.o()) {
                    generator.d(entry.getKey().toString());
                    generator.d(" {");
                    generator.a();
                    generator.b();
                    s(r2Var, generator);
                    generator.c();
                    generator.d(VectorFormat.DEFAULT_SUFFIX);
                    generator.a();
                }
            }
        }

        public c c(boolean escapeNonAscii) {
            return new c(escapeNonAscii, this.f68940b);
        }

        public final void d(final InterfaceC12670e1 message, final d generator) throws IOException {
            if (message.getDescriptorForType().b().equals("google.protobuf.Any") && g(message, generator)) {
                return;
            }
            m(message, generator);
        }

        public void e(final InterfaceC12670e1 message, final Appendable output) throws IOException {
            d(message, TextFormat.p(output));
        }

        public void f(final r2 fields, final Appendable output) throws IOException {
            s(fields, TextFormat.p(output));
        }

        public final boolean g(final InterfaceC12670e1 message, final d generator) throws IOException {
            Descriptors.b descriptorForType = message.getDescriptorForType();
            Descriptors.f k10 = descriptorForType.k(1);
            Descriptors.f k11 = descriptorForType.k(2);
            if (k10 != null && k10.A() == Descriptors.f.c.STRING && k11 != null && k11.A() == Descriptors.f.c.BYTES) {
                String str = (String) message.getField(k10);
                if (str.isEmpty()) {
                    return false;
                }
                Object field = message.getField(k11);
                try {
                    Descriptors.b c10 = this.f68940b.c(str);
                    if (c10 == null) {
                        return false;
                    }
                    P.c newBuilderForType = P.r6(c10).newBuilderForType();
                    newBuilderForType.mergeFrom((AbstractC12724x) field);
                    generator.d("[");
                    generator.d(str);
                    generator.d("] {");
                    generator.a();
                    generator.b();
                    d(newBuilderForType, generator);
                    generator.c();
                    generator.d(VectorFormat.DEFAULT_SUFFIX);
                    generator.a();
                    return true;
                } catch (InvalidProtocolBufferException unused) {
                }
            }
            return false;
        }

        public final void h(final Descriptors.f field, final Object value, final d generator) throws IOException {
            if (!field.G()) {
                if (!field.Z1()) {
                    n(field, value, generator);
                    return;
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    n(field, it.next(), generator);
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                arrayList.add(new a(it2.next(), field));
            }
            Collections.sort(arrayList);
            Iterator<E> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                n(field, ((a) it3.next()).c(), generator);
            }
        }

        public void i(final Descriptors.f field, final Object value, final Appendable output) throws IOException {
            h(field, value, TextFormat.p(output));
        }

        public String j(final Descriptors.f field, final Object value) {
            try {
                StringBuilder sb2 = new StringBuilder();
                i(field, value, sb2);
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public final void k(final Descriptors.f field, final Object value, final d generator) throws IOException {
            switch (a.f68922b[field.A().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    generator.d(((Integer) value).toString());
                    return;
                case 4:
                case 5:
                case 6:
                    generator.d(((Long) value).toString());
                    return;
                case 7:
                    generator.d(((Boolean) value).toString());
                    return;
                case 8:
                    generator.d(((Float) value).toString());
                    return;
                case 9:
                    generator.d(((Double) value).toString());
                    return;
                case 10:
                case 11:
                    generator.d(TextFormat.S(((Integer) value).intValue()));
                    return;
                case 12:
                case 13:
                    generator.d(TextFormat.T(((Long) value).longValue()));
                    return;
                case 14:
                    generator.d(JavadocConstants.ANCHOR_PREFIX_END);
                    generator.d(this.f68939a ? C12664c2.e((String) value) : TextFormat.g((String) value).replace("\n", "\\n"));
                    generator.d(JavadocConstants.ANCHOR_PREFIX_END);
                    return;
                case 15:
                    generator.d(JavadocConstants.ANCHOR_PREFIX_END);
                    if (value instanceof AbstractC12724x) {
                        generator.d(TextFormat.e((AbstractC12724x) value));
                    } else {
                        generator.d(TextFormat.f((byte[]) value));
                    }
                    generator.d(JavadocConstants.ANCHOR_PREFIX_END);
                    return;
                case 16:
                    generator.d(((Descriptors.e) value).c());
                    return;
                case 17:
                case 18:
                    d((InterfaceC12670e1) value, generator);
                    return;
                default:
                    return;
            }
        }

        public void l(final Descriptors.f field, final Object value, final Appendable output) throws IOException {
            k(field, value, TextFormat.p(output));
        }

        public final void m(final InterfaceC12670e1 message, final d generator) throws IOException {
            for (Map.Entry<Descriptors.f, Object> entry : message.getAllFields().entrySet()) {
                h(entry.getKey(), entry.getValue(), generator);
            }
            s(message.getUnknownFields(), generator);
        }

        public final void n(final Descriptors.f field, final Object value, final d generator) throws IOException {
            if (field.F()) {
                generator.d("[");
                if (field.q().w().X2() && field.A() == Descriptors.f.c.MESSAGE && field.H() && field.t() == field.x()) {
                    generator.d(field.x().b());
                } else {
                    generator.d(field.b());
                }
                generator.d("]");
            } else if (field.A() == Descriptors.f.c.GROUP) {
                generator.d(field.x().c());
            } else {
                generator.d(field.c());
            }
            Descriptors.f.b v10 = field.v();
            Descriptors.f.b bVar = Descriptors.f.b.MESSAGE;
            if (v10 == bVar) {
                generator.d(" {");
                generator.a();
                generator.b();
            } else {
                generator.d(": ");
            }
            k(field, value, generator);
            if (field.v() == bVar) {
                generator.c();
                generator.d(VectorFormat.DEFAULT_SUFFIX);
            }
            generator.a();
        }

        public String o(final InterfaceC12670e1 message) {
            try {
                StringBuilder sb2 = new StringBuilder();
                e(message, sb2);
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public String p(final r2 fields) {
            try {
                StringBuilder sb2 = new StringBuilder();
                f(fields, sb2);
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public String t(final Descriptors.f field, final Object value) {
            try {
                StringBuilder sb2 = new StringBuilder();
                h(field, value, TextFormat.P(sb2));
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public String u(final InterfaceC12670e1 message) {
            try {
                StringBuilder sb2 = new StringBuilder();
                d(message, TextFormat.P(sb2));
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public String v(final r2 fields) {
            try {
                StringBuilder sb2 = new StringBuilder();
                s(fields, TextFormat.P(sb2));
                return sb2.toString();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        public c w(l2 typeRegistry) {
            if (this.f68940b == l2.d()) {
                return new c(this.f68939a, typeRegistry);
            }
            throw new IllegalArgumentException("Only one typeRegistry is allowed.");
        }
    }

    public static final class d {

        public final Appendable f68944a;

        public final StringBuilder f68945b;

        public final boolean f68946c;

        public boolean f68947d;

        public d(Appendable appendable, boolean z10, a aVar) {
            this(appendable, z10);
        }

        public void a() throws IOException {
            if (!this.f68946c) {
                this.f68944a.append("\n");
            }
            this.f68947d = true;
        }

        public void b() {
            this.f68945b.append(GlideException.a.f59088e);
        }

        public void c() {
            int length = this.f68945b.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.f68945b.setLength(length - 2);
        }

        public void d(final CharSequence text) throws IOException {
            if (this.f68947d) {
                this.f68947d = false;
                this.f68944a.append(this.f68946c ? " " : this.f68945b);
            }
            this.f68944a.append(text);
        }

        public d(final Appendable output, boolean singleLineMode) {
            this.f68945b = new StringBuilder();
            this.f68947d = false;
            this.f68944a = output;
            this.f68946c = singleLineMode;
        }
    }

    public static final class e {

        public static final Pattern f68948k = Pattern.compile("(\\s|(#.*$))++", 8);

        public static final Pattern f68949l = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        public static final Pattern f68950m = Pattern.compile("-?inf(inity)?", 2);

        public static final Pattern f68951n = Pattern.compile("-?inf(inity)?f?", 2);

        public static final Pattern f68952o = Pattern.compile("nanf?", 2);

        public final CharSequence f68953a;

        public final Matcher f68954b;

        public String f68955c;

        public int f68956d;

        public int f68957e;

        public int f68958f;

        public int f68959g;

        public int f68960h;

        public boolean f68961i;

        public boolean f68962j;

        public e(CharSequence charSequence, a aVar) {
            this(charSequence);
        }

        public ParseException A(final String description) {
            return new ParseException(this.f68959g + 1, this.f68960h + 1, description);
        }

        public final void B() {
            this.f68954b.usePattern(f68948k);
            if (this.f68954b.lookingAt()) {
                Matcher matcher = this.f68954b;
                matcher.region(matcher.end(), this.f68954b.regionEnd());
            }
        }

        public boolean C(final String token) {
            if (!this.f68955c.equals(token)) {
                return false;
            }
            y();
            return true;
        }

        public boolean D() {
            try {
                g();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean E() {
            try {
                h();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean F() {
            try {
                i();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean G() {
            try {
                k();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean H() {
            try {
                l();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean I() {
            try {
                n();
                return true;
            } catch (ParseException unused) {
                return false;
            }
        }

        public boolean b() {
            return this.f68955c.length() == 0;
        }

        public void c(final String token) throws ParseException {
            if (C(token)) {
                return;
            }
            throw z("Expected \"" + token + "\".");
        }

        public boolean d() throws ParseException {
            if (this.f68955c.equals("true") || this.f68955c.equals("True") || this.f68955c.equals("t") || this.f68955c.equals("1")) {
                y();
                return true;
            }
            if (this.f68955c.equals("false") || this.f68955c.equals("False") || this.f68955c.equals("f") || this.f68955c.equals("0")) {
                y();
                return false;
            }
            throw z("Expected \"true\" or \"false\". Found \"" + this.f68955c + "\".");
        }

        public AbstractC12724x e() throws ParseException {
            ArrayList arrayList = new ArrayList();
            f(arrayList);
            while (true) {
                if (!this.f68955c.startsWith("'") && !this.f68955c.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                    return AbstractC12724x.n(arrayList);
                }
                f(arrayList);
            }
        }

        public final void f(List<AbstractC12724x> list) throws ParseException {
            char charAt = this.f68955c.length() > 0 ? this.f68955c.charAt(0) : (char) 0;
            if (charAt != '\"' && charAt != '\'') {
                throw z("Expected string.");
            }
            if (this.f68955c.length() >= 2) {
                String str = this.f68955c;
                if (str.charAt(str.length() - 1) == charAt) {
                    try {
                        String str2 = this.f68955c;
                        AbstractC12724x Q10 = TextFormat.Q(str2.substring(1, str2.length() - 1));
                        y();
                        list.add(Q10);
                        return;
                    } catch (InvalidEscapeSequenceException e10) {
                        throw z(e10.getMessage());
                    }
                }
            }
            throw z("String missing ending quote.");
        }

        public double g() throws ParseException {
            if (f68950m.matcher(this.f68955c).matches()) {
                boolean startsWith = this.f68955c.startsWith("-");
                y();
                return startsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f68955c.equalsIgnoreCase(LuaDouble.JSTR_NAN)) {
                y();
                return Double.NaN;
            }
            try {
                double parseDouble = Double.parseDouble(this.f68955c);
                y();
                return parseDouble;
            } catch (NumberFormatException e10) {
                throw o(e10);
            }
        }

        public float h() throws ParseException {
            if (f68951n.matcher(this.f68955c).matches()) {
                boolean startsWith = this.f68955c.startsWith("-");
                y();
                return startsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f68952o.matcher(this.f68955c).matches()) {
                y();
                return Float.NaN;
            }
            try {
                float parseFloat = Float.parseFloat(this.f68955c);
                y();
                return parseFloat;
            } catch (NumberFormatException e10) {
                throw o(e10);
            }
        }

        public String i() throws ParseException {
            for (int i10 = 0; i10 < this.f68955c.length(); i10++) {
                char charAt = this.f68955c.charAt(i10);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && !(('0' <= charAt && charAt <= '9') || charAt == '_' || charAt == '.'))) {
                    throw z("Expected identifier. Found '" + this.f68955c + "'");
                }
            }
            String str = this.f68955c;
            y();
            return str;
        }

        public int j() throws ParseException {
            try {
                int s10 = TextFormat.s(this.f68955c);
                y();
                return s10;
            } catch (NumberFormatException e10) {
                throw v(e10);
            }
        }

        public long k() throws ParseException {
            try {
                long t10 = TextFormat.t(this.f68955c);
                y();
                return t10;
            } catch (NumberFormatException e10) {
                throw v(e10);
            }
        }

        public String l() throws ParseException {
            return e().g0();
        }

        public int m() throws ParseException {
            try {
                int v10 = TextFormat.v(this.f68955c);
                y();
                return v10;
            } catch (NumberFormatException e10) {
                throw v(e10);
            }
        }

        public long n() throws ParseException {
            try {
                long w10 = TextFormat.w(this.f68955c);
                y();
                return w10;
            } catch (NumberFormatException e10) {
                throw v(e10);
            }
        }

        public final ParseException o(final NumberFormatException e10) {
            return z("Couldn't parse number: " + e10.getMessage());
        }

        public int p() {
            return this.f68958f;
        }

        public boolean q() {
            return this.f68961i;
        }

        public boolean r() {
            return this.f68962j;
        }

        public int s() {
            return this.f68957e;
        }

        public int t() {
            return this.f68960h;
        }

        public int u() {
            return this.f68959g;
        }

        public final ParseException v(final NumberFormatException e10) {
            return z("Couldn't parse integer: " + e10.getMessage());
        }

        public boolean w(String text) {
            return this.f68955c.equals(text);
        }

        public boolean x() {
            if (this.f68955c.length() == 0) {
                return false;
            }
            char charAt = this.f68955c.charAt(0);
            return ('0' <= charAt && charAt <= '9') || charAt == '-' || charAt == '+';
        }

        public void y() {
            this.f68959g = this.f68957e;
            this.f68960h = this.f68958f;
            while (this.f68956d < this.f68954b.regionStart()) {
                if (this.f68953a.charAt(this.f68956d) == '\n') {
                    this.f68957e++;
                    this.f68958f = 0;
                } else {
                    this.f68958f++;
                }
                this.f68956d++;
            }
            if (this.f68954b.regionStart() == this.f68954b.regionEnd()) {
                this.f68955c = "";
                return;
            }
            this.f68954b.usePattern(f68949l);
            if (this.f68954b.lookingAt()) {
                this.f68955c = this.f68954b.group();
                Matcher matcher = this.f68954b;
                matcher.region(matcher.end(), this.f68954b.regionEnd());
            } else {
                this.f68955c = String.valueOf(this.f68953a.charAt(this.f68956d));
                Matcher matcher2 = this.f68954b;
                matcher2.region(this.f68956d + 1, matcher2.regionEnd());
            }
            B();
        }

        public ParseException z(final String description) {
            return new ParseException(this.f68957e + 1, this.f68958f + 1, description);
        }

        public e(final CharSequence text) {
            this.f68956d = 0;
            this.f68957e = 0;
            this.f68958f = 0;
            this.f68959g = 0;
            this.f68960h = 0;
            this.f68961i = false;
            this.f68962j = false;
            this.f68953a = text;
            this.f68954b = f68948k.matcher(text);
            B();
            y();
        }
    }

    @Deprecated
    public static String A(final Descriptors.f field, final Object value) {
        return L().j(field, value);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().printFieldValue(field, value, output)")
    @Deprecated
    public static void B(final Descriptors.f field, final Object value, final Appendable output) throws IOException {
        L().l(field, value, output);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().printToString(message)")
    @Deprecated
    public static String C(final InterfaceC12670e1 message) {
        return L().o(message);
    }

    @Deprecated
    public static String D(final r2 fields) {
        return L().p(fields);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().escapingNonAscii(false).printToString(message)")
    @Deprecated
    public static String E(final InterfaceC12670e1 message) {
        return L().c(false).o(message);
    }

    @Deprecated
    public static String F(final r2 fields) {
        return L().c(false).p(fields);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().escapingNonAscii(false).print(message, output)")
    @Deprecated
    public static void G(final InterfaceC12670e1 message, final Appendable output) throws IOException {
        L().c(false).e(message, output);
    }

    @Deprecated
    public static void H(final r2 fields, final Appendable output) throws IOException {
        L().c(false).f(fields, output);
    }

    @Deprecated
    public static void I(final Descriptors.f field, final Object value, final Appendable output) throws IOException {
        L().c(false).l(field, value, output);
    }

    public static void J(final int tag, final Object value, final d generator) throws IOException {
        int b10 = A2.b(tag);
        if (b10 == 0) {
            generator.d(T(((Long) value).longValue()));
            return;
        }
        if (b10 == 1) {
            generator.d(String.format(null, "0x%016x", (Long) value));
            return;
        }
        if (b10 != 2) {
            if (b10 == 3) {
                c.s((r2) value, generator);
                return;
            } else {
                if (b10 == 5) {
                    generator.d(String.format(null, "0x%08x", (Integer) value));
                    return;
                }
                throw new IllegalArgumentException("Bad tag: " + tag);
            }
        }
        try {
            r2 d32 = r2.d3((AbstractC12724x) value);
            generator.d("{");
            generator.a();
            generator.b();
            c.s(d32, generator);
            generator.c();
            generator.d(VectorFormat.DEFAULT_SUFFIX);
        } catch (InvalidProtocolBufferException unused) {
            generator.d(JavadocConstants.ANCHOR_PREFIX_END);
            generator.d(e((AbstractC12724x) value));
            generator.d(JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    public static void K(final int tag, final Object value, final Appendable output) throws IOException {
        J(tag, value, p(output));
    }

    public static c L() {
        return c.f68938c;
    }

    @Deprecated
    public static String M(final Descriptors.f field, final Object value) {
        return L().t(field, value);
    }

    public static String N(final InterfaceC12670e1 message) {
        return L().u(message);
    }

    @Deprecated
    public static String O(final r2 fields) {
        return L().v(fields);
    }

    public static d P(Appendable output) {
        return new d(output, true, null);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:46:0x00a9. Please report as an issue. */
    public static AbstractC12724x Q(CharSequence charString) throws InvalidEscapeSequenceException {
        int i10;
        int i11;
        int length;
        int i12;
        AbstractC12724x w10 = AbstractC12724x.w(charString.toString());
        int size = w10.size();
        byte[] bArr = new byte[size];
        int i13 = 0;
        int i14 = 0;
        while (i13 < w10.size()) {
            byte j10 = w10.j(i13);
            if (j10 == 92) {
                int i15 = i13 + 1;
                if (i15 >= w10.size()) {
                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
                }
                byte j11 = w10.j(i15);
                if (k(j11)) {
                    int d10 = d(j11);
                    int i16 = i13 + 2;
                    if (i16 < w10.size() && k(w10.j(i16))) {
                        d10 = (d10 * 8) + d(w10.j(i16));
                        i15 = i16;
                    }
                    i13 = i15 + 1;
                    if (i13 >= w10.size() || !k(w10.j(i13))) {
                        i13 = i15;
                    } else {
                        d10 = (d10 * 8) + d(w10.j(i13));
                    }
                    i12 = i14 + 1;
                    bArr[i14] = (byte) d10;
                } else {
                    if (j11 == 34) {
                        i10 = i14 + 1;
                        bArr[i14] = 34;
                    } else if (j11 == 39) {
                        i10 = i14 + 1;
                        bArr[i14] = Opcodes.OPC_dload_1;
                    } else if (j11 != 63) {
                        if (j11 == 85) {
                            int i17 = i13 + 2;
                            i11 = i13 + 9;
                            if (i11 >= w10.size()) {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                            }
                            int i18 = 0;
                            int i19 = i17;
                            while (true) {
                                int i20 = i13 + 10;
                                if (i19 < i20) {
                                    byte j12 = w10.j(i19);
                                    if (!j(j12)) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U' with too few hex chars");
                                    }
                                    i18 = (i18 << 4) | d(j12);
                                    i19++;
                                } else {
                                    if (!Character.isValidCodePoint(i18)) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + w10.a0(i17, i20).g0() + "' is not a valid code point value");
                                    }
                                    Character.UnicodeBlock of2 = Character.UnicodeBlock.of(i18);
                                    if (of2 != null && (of2.equals(Character.UnicodeBlock.LOW_SURROGATES) || of2.equals(Character.UnicodeBlock.HIGH_SURROGATES) || of2.equals(Character.UnicodeBlock.HIGH_PRIVATE_USE_SURROGATES))) {
                                        throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\U" + w10.a0(i17, i20).g0() + "' refers to a surrogate code unit");
                                    }
                                    byte[] bytes = new String(new int[]{i18}, 0, 1).getBytes(D0.f67922b);
                                    System.arraycopy(bytes, 0, bArr, i14, bytes.length);
                                    length = bytes.length;
                                }
                            }
                        } else if (j11 == 92) {
                            i10 = i14 + 1;
                            bArr[i14] = 92;
                        } else if (j11 == 102) {
                            i10 = i14 + 1;
                            bArr[i14] = 12;
                        } else if (j11 == 110) {
                            i10 = i14 + 1;
                            bArr[i14] = 10;
                        } else if (j11 == 114) {
                            i10 = i14 + 1;
                            bArr[i14] = 13;
                        } else if (j11 == 120) {
                            int i21 = i13 + 2;
                            if (i21 >= w10.size() || !j(w10.j(i21))) {
                                throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
                            }
                            int d11 = d(w10.j(i21));
                            i13 += 3;
                            if (i13 >= w10.size() || !j(w10.j(i13))) {
                                i13 = i21;
                            } else {
                                d11 = (d11 * 16) + d(w10.j(i13));
                            }
                            i12 = i14 + 1;
                            bArr[i14] = (byte) d11;
                        } else if (j11 == 97) {
                            i10 = i14 + 1;
                            bArr[i14] = 7;
                        } else if (j11 != 98) {
                            switch (j11) {
                                case 116:
                                    i10 = i14 + 1;
                                    bArr[i14] = 9;
                                    break;
                                case 117:
                                    int i22 = i13 + 2;
                                    i11 = i13 + 5;
                                    if (i11 < w10.size() && j(w10.j(i22))) {
                                        int i23 = i13 + 3;
                                        if (j(w10.j(i23))) {
                                            int i24 = i13 + 4;
                                            if (j(w10.j(i24)) && j(w10.j(i11))) {
                                                char d12 = (char) ((d(w10.j(i24)) << 4) | (d(w10.j(i22)) << 12) | (d(w10.j(i23)) << 8) | d(w10.j(i11)));
                                                if (d12 >= '\ud800' && d12 <= '\udfff') {
                                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' refers to a surrogate");
                                                }
                                                byte[] bytes2 = Character.toString(d12).getBytes(D0.f67922b);
                                                System.arraycopy(bytes2, 0, bArr, i14, bytes2.length);
                                                length = bytes2.length;
                                                break;
                                            }
                                        }
                                    }
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\u' with too few hex chars");
                                case 118:
                                    i10 = i14 + 1;
                                    bArr[i14] = 11;
                                    break;
                                default:
                                    throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + ((char) j11) + JavaElement.JEM_MODULAR_CLASSFILE);
                            }
                        } else {
                            i10 = i14 + 1;
                            bArr[i14] = 8;
                        }
                        i14 += length;
                        i13 = i11;
                    } else {
                        i10 = i14 + 1;
                        bArr[i14] = Opcodes.OPC_lstore_0;
                    }
                    i14 = i10;
                    i13 = i15;
                }
                i14 = i12;
            } else {
                bArr[i14] = j10;
                i14++;
            }
            i13++;
        }
        return size == i14 ? AbstractC12724x.k0(bArr) : AbstractC12724x.v(bArr, 0, i14);
    }

    public static String R(final String input) throws InvalidEscapeSequenceException {
        return Q(input).g0();
    }

    public static String S(final int value) {
        return value >= 0 ? Integer.toString(value) : Long.toString(value & 4294967295L);
    }

    public static String T(final long value) {
        return value >= 0 ? Long.toString(value) : BigInteger.valueOf(value & Long.MAX_VALUE).setBit(63).toString();
    }

    public static int d(final byte c10) {
        return (48 > c10 || c10 > 57) ? (97 > c10 || c10 > 122) ? c10 + Opcodes.OPC_jsr_w : c10 + Opcodes.OPC_ret : c10 - 48;
    }

    public static String e(AbstractC12724x input) {
        return C12664c2.a(input);
    }

    public static String f(byte[] input) {
        return C12664c2.c(input);
    }

    public static String g(final String input) {
        return C12664c2.d(input);
    }

    public static String h(final String input) {
        return e(AbstractC12724x.w(input));
    }

    public static b i() {
        return f68920c;
    }

    public static boolean j(final byte c10) {
        return (48 <= c10 && c10 <= 57) || (97 <= c10 && c10 <= 102) || (65 <= c10 && c10 <= 70);
    }

    public static boolean k(final byte c10) {
        return 48 <= c10 && c10 <= 55;
    }

    public static void l(final CharSequence input, final C12658b0 extensionRegistry, final Y0.a builder) throws ParseException {
        f68920c.g(input, extensionRegistry, builder);
    }

    public static void m(final CharSequence input, final Y0.a builder) throws ParseException {
        f68920c.h(input, builder);
    }

    public static void n(final Readable input, final C12658b0 extensionRegistry, final Y0.a builder) throws IOException {
        f68920c.i(input, extensionRegistry, builder);
    }

    public static void o(final Readable input, final Y0.a builder) throws IOException {
        f68920c.j(input, builder);
    }

    public static d p(Appendable output) {
        return new d(output, false, null);
    }

    public static <T extends Y0> T q(CharSequence charSequence, C12658b0 c12658b0, Class<T> cls) throws ParseException {
        Y0.a newBuilderForType = ((Y0) D0.j(cls)).newBuilderForType();
        l(charSequence, c12658b0, newBuilderForType);
        return (T) newBuilderForType.build();
    }

    public static <T extends Y0> T r(CharSequence charSequence, Class<T> cls) throws ParseException {
        Y0.a newBuilderForType = ((Y0) D0.j(cls)).newBuilderForType();
        m(charSequence, newBuilderForType);
        return (T) newBuilderForType.build();
    }

    public static int s(final String text) throws NumberFormatException {
        return (int) u(text, true, false);
    }

    public static long t(final String text) throws NumberFormatException {
        return u(text, true, true);
    }

    public static long u(final String text, final boolean isSigned, final boolean isLong) throws NumberFormatException {
        int i10;
        int i11 = 0;
        if (text.startsWith("-", 0)) {
            if (!isSigned) {
                throw new NumberFormatException("Number must be positive: " + text);
            }
            i11 = 1;
        }
        int i12 = i11;
        if (text.startsWith("0x", i11)) {
            i11 += 2;
            i10 = 16;
        } else {
            i10 = text.startsWith("0", i11) ? 8 : 10;
        }
        String substring = text.substring(i11);
        if (substring.length() < 16) {
            long parseLong = Long.parseLong(substring, i10);
            if (i12 != 0) {
                parseLong = -parseLong;
            }
            if (isLong) {
                return parseLong;
            }
            if (isSigned) {
                if (parseLong <= 2147483647L && parseLong >= -2147483648L) {
                    return parseLong;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
            if (parseLong < 4294967296L && parseLong >= 0) {
                return parseLong;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        BigInteger bigInteger = new BigInteger(substring, i10);
        if (i12 != 0) {
            bigInteger = bigInteger.negate();
        }
        if (isLong) {
            if (isSigned) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + text);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + text);
            }
        } else if (isSigned) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + text);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + text);
        }
        return bigInteger.longValue();
    }

    public static int v(final String text) throws NumberFormatException {
        return (int) u(text, false, false);
    }

    public static long w(final String text) throws NumberFormatException {
        return u(text, false, true);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.TextFormat"}, replacement = "TextFormat.printer().print(message, output)")
    @Deprecated
    public static void x(final InterfaceC12670e1 message, final Appendable output) throws IOException {
        L().e(message, output);
    }

    @Deprecated
    public static void y(final r2 fields, final Appendable output) throws IOException {
        L().f(fields, output);
    }

    @Deprecated
    public static void z(final Descriptors.f field, final Object value, final Appendable output) throws IOException {
        L().i(field, value, output);
    }
}
