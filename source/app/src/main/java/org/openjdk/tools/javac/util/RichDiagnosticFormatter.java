package org.openjdk.tools.javac.util;

import java.nio.file.Path;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Printer;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.util.ForwardingDiagnosticFormatter;
import org.openjdk.tools.javac.util.JCDiagnostic;

public class RichDiagnosticFormatter extends ForwardingDiagnosticFormatter<JCDiagnostic, AbstractDiagnosticFormatter> {
    final JCDiagnostic.Factory diags;
    final JavacMessages messages;
    protected ClassNameSimplifier nameSimplifier;
    private RichPrinter printer;
    protected Types.DefaultSymbolVisitor<Void, Void> symbolPreprocessor;
    final Symtab syms;
    protected Types.UnaryVisitor<Void> typePreprocessor;
    final Types types;
    Map<WhereClauseKind, Map<Type, JCDiagnostic>> whereClauses;

    public class ClassNameSimplifier {
        Map<Name, List<Symbol>> nameClashes = new HashMap();

        public ClassNameSimplifier() {
        }

        public void addUsage(Symbol symbol) {
            Name simpleName = symbol.getSimpleName();
            List<Symbol> list = this.nameClashes.get(simpleName);
            if (list == null) {
                list = List.nil();
            }
            if (list.contains(symbol)) {
                return;
            }
            this.nameClashes.put(simpleName, list.append(symbol));
        }

        public String simplify(Symbol symbol) {
            String name = symbol.getQualifiedName().toString();
            if (symbol.type.isCompound() || symbol.type.isPrimitive()) {
                return name;
            }
            List<Symbol> list = this.nameClashes.get(symbol.getSimpleName());
            if (list != null && (list.size() != 1 || !list.contains(symbol))) {
                return name;
            }
            List nil = List.nil();
            while (true) {
                Type type = symbol.type;
                TypeTag typeTag = TypeTag.CLASS;
                if (!type.hasTag(typeTag) || !symbol.type.getEnclosingType().hasTag(typeTag) || symbol.owner.kind != Kinds.Kind.TYP) {
                    break;
                }
                nil = nil.prepend(symbol.getSimpleName());
                symbol = symbol.owner;
            }
            List prepend = nil.prepend(symbol.getSimpleName());
            StringBuilder sb2 = new StringBuilder();
            Iterator it = prepend.iterator();
            String str = "";
            while (it.hasNext()) {
                Name name2 = (Name) it.next();
                sb2.append(str);
                sb2.append((CharSequence) name2);
                str = ".";
            }
            return sb2.toString();
        }
    }

    public static class RichConfiguration extends ForwardingDiagnosticFormatter.ForwardingConfiguration {
        protected EnumSet<RichFormatterFeature> features;

        public enum RichFormatterFeature {
            WHERE_CLAUSES,
            SIMPLE_NAMES,
            UNIQUE_TYPEVAR_NAMES
        }

        public RichConfiguration(Options options, AbstractDiagnosticFormatter abstractDiagnosticFormatter) {
            super(abstractDiagnosticFormatter.getConfiguration());
            this.features = abstractDiagnosticFormatter.isRaw() ? EnumSet.noneOf(RichFormatterFeature.class) : EnumSet.of(RichFormatterFeature.SIMPLE_NAMES, RichFormatterFeature.WHERE_CLAUSES, RichFormatterFeature.UNIQUE_TYPEVAR_NAMES);
            String str = options.get("diags.formatterOptions");
            if (str != null) {
                for (String str2 : str.split(DocLint.SEPARATOR)) {
                    if (str2.equals("-where")) {
                        this.features.remove(RichFormatterFeature.WHERE_CLAUSES);
                    } else if (str2.equals("where")) {
                        this.features.add(RichFormatterFeature.WHERE_CLAUSES);
                    }
                    if (str2.equals("-simpleNames")) {
                        this.features.remove(RichFormatterFeature.SIMPLE_NAMES);
                    } else if (str2.equals("simpleNames")) {
                        this.features.add(RichFormatterFeature.SIMPLE_NAMES);
                    }
                    if (str2.equals("-disambiguateTvars")) {
                        this.features.remove(RichFormatterFeature.UNIQUE_TYPEVAR_NAMES);
                    } else if (str2.equals("disambiguateTvars")) {
                        this.features.add(RichFormatterFeature.UNIQUE_TYPEVAR_NAMES);
                    }
                }
            }
        }

        public void disable(RichFormatterFeature richFormatterFeature) {
            this.features.remove(richFormatterFeature);
        }

        public void enable(RichFormatterFeature richFormatterFeature) {
            this.features.add(richFormatterFeature);
        }

        public RichFormatterFeature[] getAvailableFeatures() {
            return RichFormatterFeature.values();
        }

        public boolean isEnabled(RichFormatterFeature richFormatterFeature) {
            return this.features.contains(richFormatterFeature);
        }
    }

    public class RichPrinter extends Printer {
        public RichPrinter() {
        }

        @Override
        public String capturedVarId(Type.CapturedType capturedType, Locale locale) {
            return RichDiagnosticFormatter.this.indexOf(capturedType, WhereClauseKind.CAPTURED) + "";
        }

        @Override
        public String className(Type.ClassType classType, boolean z10, Locale locale) {
            Symbol.TypeSymbol typeSymbol = classType.tsym;
            return (typeSymbol.name.length() == 0 || !RichDiagnosticFormatter.this.getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.SIMPLE_NAMES)) ? super.className(classType, z10, locale) : z10 ? RichDiagnosticFormatter.this.nameSimplifier.simplify(typeSymbol).toString() : typeSymbol.name.toString();
        }

        @Override
        public String localize(Locale locale, String str, Object... objArr) {
            return ((AbstractDiagnosticFormatter) RichDiagnosticFormatter.this.formatter).localize(locale, str, objArr);
        }

        @Override
        public String visitCapturedType(Type.CapturedType capturedType, Locale locale) {
            if (RichDiagnosticFormatter.this.getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.WHERE_CLAUSES)) {
                return localize(locale, "compiler.misc.captured.type", Integer.valueOf(RichDiagnosticFormatter.this.indexOf(capturedType, WhereClauseKind.CAPTURED)));
            }
            return super.visitCapturedType(capturedType, locale);
        }

        @Override
        public String visitClassSymbol(Symbol.ClassSymbol classSymbol, Locale locale) {
            if (classSymbol.type.isCompound()) {
                return visit(classSymbol.type, locale);
            }
            String simplify = RichDiagnosticFormatter.this.nameSimplifier.simplify(classSymbol);
            return (simplify.length() == 0 || !RichDiagnosticFormatter.this.getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.SIMPLE_NAMES)) ? super.visitClassSymbol(classSymbol, locale) : simplify;
        }

        @Override
        public String visitClassType(Type.ClassType classType, Locale locale) {
            if (classType.isCompound() && RichDiagnosticFormatter.this.getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.WHERE_CLAUSES)) {
                return localize(locale, "compiler.misc.intersection.type", Integer.valueOf(RichDiagnosticFormatter.this.indexOf(classType, WhereClauseKind.INTERSECTION)));
            }
            return super.visitClassType(classType, locale);
        }

        @Override
        public String visitMethodSymbol(Symbol.MethodSymbol methodSymbol, Locale locale) {
            String visit = visit(methodSymbol.owner, locale);
            if (methodSymbol.isStaticOrInstanceInit()) {
                return visit;
            }
            Name name = methodSymbol.name;
            if (name != name.table.names.init) {
                visit = name.toString();
            }
            Type type = methodSymbol.type;
            if (type == null) {
                return visit;
            }
            if (type.hasTag(TypeTag.FORALL)) {
                visit = "<" + visitTypes(methodSymbol.type.getTypeArguments(), locale) + ">" + visit;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(visit);
            sb2.append("(");
            sb2.append(printMethodArgs(methodSymbol.type.getParameterTypes(), (methodSymbol.flags() & 17179869184L) != 0, locale));
            sb2.append(")");
            return sb2.toString();
        }

        @Override
        public String visitType(Type type, Locale locale) {
            return type == RichDiagnosticFormatter.this.syms.botType ? localize(locale, "compiler.misc.type.null", new Object[0]) : super.visitType(type, locale);
        }

        @Override
        public String visitTypeVar(Type.TypeVar typeVar, Locale locale) {
            if (!RichDiagnosticFormatter.this.unique(typeVar) && RichDiagnosticFormatter.this.getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.UNIQUE_TYPEVAR_NAMES)) {
                return localize(locale, "compiler.misc.type.var", typeVar.toString(), Integer.valueOf(RichDiagnosticFormatter.this.indexOf(typeVar, WhereClauseKind.TYPEVAR)));
            }
            return typeVar.toString();
        }
    }

    public enum WhereClauseKind {
        TYPEVAR("where.description.typevar"),
        CAPTURED("where.description.captured"),
        INTERSECTION("where.description.intersection");

        private final String key;

        WhereClauseKind(String str) {
            this.key = str;
        }

        public String key() {
            return this.key;
        }
    }

    public RichDiagnosticFormatter(Context context) {
        super((AbstractDiagnosticFormatter) Log.instance(context).getDiagnosticFormatter());
        this.typePreprocessor = new Types.UnaryVisitor<Void>() {
            public Void visit(List<Type> list) {
                Iterator<Type> it = list.iterator();
                while (it.hasNext()) {
                    visit(it.next());
                }
                return null;
            }

            @Override
            public Void visitType(Type type, Void r22) {
                return null;
            }

            @Override
            public Void visitArrayType(Type.ArrayType arrayType, Void r22) {
                visit(arrayType.elemtype);
                return null;
            }

            @Override
            public Void visitCapturedType(Type.CapturedType capturedType, Void r72) {
                RichDiagnosticFormatter richDiagnosticFormatter = RichDiagnosticFormatter.this;
                WhereClauseKind whereClauseKind = WhereClauseKind.CAPTURED;
                if (richDiagnosticFormatter.indexOf(capturedType, whereClauseKind) != -1) {
                    return null;
                }
                Type type = capturedType.lower;
                RichDiagnosticFormatter richDiagnosticFormatter2 = RichDiagnosticFormatter.this;
                String str = type == richDiagnosticFormatter2.syms.botType ? ".1" : "";
                RichDiagnosticFormatter.this.whereClauses.get(whereClauseKind).put(capturedType, richDiagnosticFormatter2.diags.fragment("where.captured" + str, capturedType, capturedType.bound, capturedType.lower, capturedType.wildcard));
                visit(capturedType.wildcard);
                visit(capturedType.lower);
                visit(capturedType.bound);
                return null;
            }

            @Override
            public Void visitClassType(Type.ClassType classType, Void r72) {
                Type.ClassType classType2;
                if (classType.isCompound()) {
                    RichDiagnosticFormatter richDiagnosticFormatter = RichDiagnosticFormatter.this;
                    WhereClauseKind whereClauseKind = WhereClauseKind.INTERSECTION;
                    if (richDiagnosticFormatter.indexOf(classType, whereClauseKind) == -1) {
                        Type supertype = RichDiagnosticFormatter.this.types.supertype(classType);
                        List<Type> interfaces = RichDiagnosticFormatter.this.types.interfaces(classType);
                        RichDiagnosticFormatter.this.whereClauses.get(whereClauseKind).put(classType, RichDiagnosticFormatter.this.diags.fragment("where.intersection", classType, interfaces.prepend(supertype)));
                        visit(supertype);
                        visit(interfaces);
                    }
                } else if (classType.tsym.name.isEmpty() && (classType2 = (Type.ClassType) classType.tsym.type) != null) {
                    List<Type> list = classType2.interfaces_field;
                    if (list != null && list.nonEmpty()) {
                        visit(classType2.interfaces_field.head);
                    } else {
                        visit(classType2.supertype_field);
                    }
                }
                RichDiagnosticFormatter.this.nameSimplifier.addUsage(classType.tsym);
                visit(classType.getTypeArguments());
                if (classType.getEnclosingType() == Type.noType) {
                    return null;
                }
                visit(classType.getEnclosingType());
                return null;
            }

            @Override
            public Void visitErrorType(Type.ErrorType errorType, Void r22) {
                Type originalType = errorType.getOriginalType();
                if (originalType == null) {
                    return null;
                }
                visit(originalType);
                return null;
            }

            @Override
            public Void visitForAll(Type.ForAll forAll, Void r22) {
                visit(forAll.tvars);
                visit(forAll.qtype);
                return null;
            }

            @Override
            public Void visitMethodType(Type.MethodType methodType, Void r22) {
                visit(methodType.argtypes);
                visit(methodType.restype);
                return null;
            }

            @Override
            public Void visitTypeVar(Type.TypeVar typeVar, Void r92) {
                List<Type> nil;
                Type.TypeVar typeVar2 = (Type.TypeVar) typeVar.stripMetadataIfNeeded();
                if (RichDiagnosticFormatter.this.indexOf(typeVar2, WhereClauseKind.TYPEVAR) == -1) {
                    Type type = typeVar2.bound;
                    while (type instanceof Type.ErrorType) {
                        type = ((Type.ErrorType) type).getOriginalType();
                    }
                    if (type != null && (type.hasTag(TypeTag.CLASS) || type.hasTag(TypeTag.TYPEVAR))) {
                        nil = RichDiagnosticFormatter.this.types.getBounds(typeVar2);
                    } else {
                        nil = List.nil();
                    }
                    RichDiagnosticFormatter.this.nameSimplifier.addUsage(typeVar2.tsym);
                    Type type2 = nil.head;
                    boolean z10 = type2 == null || type2.hasTag(TypeTag.NONE) || nil.head.hasTag(TypeTag.ERROR);
                    if ((typeVar2.tsym.flags() & 4096) == 0) {
                        JCDiagnostic.Factory factory = RichDiagnosticFormatter.this.diags;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("where.typevar");
                        sb2.append(z10 ? ".1" : "");
                        RichDiagnosticFormatter.this.whereClauses.get(WhereClauseKind.TYPEVAR).put(typeVar2, factory.fragment(sb2.toString(), typeVar2, nil, Kinds.kindName(typeVar2.tsym.location()), typeVar2.tsym.location()));
                        RichDiagnosticFormatter.this.symbolPreprocessor.visit(typeVar2.tsym.location(), null);
                        visit(nil);
                    } else {
                        Assert.check(!z10);
                        RichDiagnosticFormatter.this.whereClauses.get(WhereClauseKind.TYPEVAR).put(typeVar2, RichDiagnosticFormatter.this.diags.fragment("where.fresh.typevar", typeVar2, nil));
                        visit(nil);
                    }
                }
                return null;
            }

            @Override
            public Void visitWildcardType(Type.WildcardType wildcardType, Void r22) {
                visit(wildcardType.type);
                return null;
            }
        };
        this.symbolPreprocessor = new Types.DefaultSymbolVisitor<Void, Void>() {
            @Override
            public Void visitSymbol(Symbol symbol, Void r22) {
                return null;
            }

            @Override
            public Void visitClassSymbol(Symbol.ClassSymbol classSymbol, Void r22) {
                if (classSymbol.type.isCompound()) {
                    RichDiagnosticFormatter.this.typePreprocessor.visit(classSymbol.type);
                    return null;
                }
                RichDiagnosticFormatter.this.nameSimplifier.addUsage(classSymbol);
                return null;
            }

            @Override
            public Void visitMethodSymbol(Symbol.MethodSymbol methodSymbol, Void r32) {
                visit(methodSymbol.owner, null);
                Type type = methodSymbol.type;
                if (type != null) {
                    RichDiagnosticFormatter.this.typePreprocessor.visit(type);
                }
                return null;
            }
        };
        setRichPrinter(new RichPrinter());
        this.syms = Symtab.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.types = Types.instance(context);
        this.messages = JavacMessages.instance(context);
        this.whereClauses = new EnumMap(WhereClauseKind.class);
        this.configuration = new RichConfiguration(Options.instance(context), (AbstractDiagnosticFormatter) this.formatter);
        for (WhereClauseKind whereClauseKind : WhereClauseKind.values()) {
            this.whereClauses.put(whereClauseKind, new LinkedHashMap());
        }
    }

    public int indexOf(Type type, WhereClauseKind whereClauseKind) {
        int i10 = 1;
        for (Type type2 : this.whereClauses.get(whereClauseKind).o()) {
            if (type2.tsym == type.tsym) {
                return i10;
            }
            if (whereClauseKind != WhereClauseKind.TYPEVAR || type2.toString().equals(type.toString())) {
                i10++;
            }
        }
        return -1;
    }

    public static RichDiagnosticFormatter instance(Context context) {
        RichDiagnosticFormatter richDiagnosticFormatter = (RichDiagnosticFormatter) context.get(RichDiagnosticFormatter.class);
        return richDiagnosticFormatter == null ? new RichDiagnosticFormatter(context) : richDiagnosticFormatter;
    }

    public boolean unique(Type.TypeVar typeVar) {
        Type.TypeVar typeVar2 = (Type.TypeVar) typeVar.stripMetadata();
        Iterator<Type> it = this.whereClauses.get(WhereClauseKind.TYPEVAR).o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().stripMetadata().toString().equals(typeVar2.toString())) {
                i10++;
            }
        }
        if (i10 >= 1) {
            return i10 == 1;
        }
        throw new AssertionError((Object) ("Missing type variable in where clause: " + ((Object) typeVar2)));
    }

    public RichPrinter getRichPrinter() {
        return this.printer;
    }

    public List<JCDiagnostic> getWhereClauses() {
        List nil = List.nil();
        for (WhereClauseKind whereClauseKind : WhereClauseKind.values()) {
            List nil2 = List.nil();
            Iterator<Map.Entry<Type, JCDiagnostic>> it = this.whereClauses.get(whereClauseKind).entrySet().iterator();
            while (it.hasNext()) {
                nil2 = nil2.prepend(it.next().getValue());
            }
            if (!nil2.isEmpty()) {
                String key = whereClauseKind.key();
                if (nil2.size() > 1) {
                    key = key + ".1";
                }
                nil = nil.prepend(new JCDiagnostic.MultilineDiagnostic(this.diags.fragment(key, this.whereClauses.get(whereClauseKind).o()), nil2.reverse()));
            }
        }
        return nil.reverse();
    }

    public void preprocessArgument(Object obj) {
        if (obj instanceof Type) {
            preprocessType((Type) obj);
            return;
        }
        if (obj instanceof Symbol) {
            preprocessSymbol((Symbol) obj);
            return;
        }
        if (obj instanceof JCDiagnostic) {
            preprocessDiagnostic((JCDiagnostic) obj);
        } else {
            if (!(obj instanceof Iterable) || (obj instanceof Path)) {
                return;
            }
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                preprocessArgument(it.next());
            }
        }
    }

    public void preprocessDiagnostic(JCDiagnostic jCDiagnostic) {
        for (Object obj : jCDiagnostic.getArgs()) {
            if (obj != null) {
                preprocessArgument(obj);
            }
        }
        if (jCDiagnostic.isMultiline()) {
            Iterator<JCDiagnostic> it = jCDiagnostic.getSubdiagnostics().iterator();
            while (it.hasNext()) {
                preprocessDiagnostic(it.next());
            }
        }
    }

    public void preprocessSymbol(Symbol symbol) {
        this.symbolPreprocessor.visit(symbol, null);
    }

    public void preprocessType(Type type) {
        this.typePreprocessor.visit(type);
    }

    public void setRichPrinter(RichPrinter richPrinter) {
        this.printer = richPrinter;
        ((AbstractDiagnosticFormatter) this.formatter).setPrinter(richPrinter);
    }

    @Override
    public String format(JCDiagnostic jCDiagnostic, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        this.nameSimplifier = new ClassNameSimplifier();
        for (WhereClauseKind whereClauseKind : WhereClauseKind.values()) {
            this.whereClauses.get(whereClauseKind).clear();
        }
        preprocessDiagnostic(jCDiagnostic);
        sb2.append(((AbstractDiagnosticFormatter) this.formatter).format(jCDiagnostic, locale));
        if (getConfiguration().isEnabled(RichConfiguration.RichFormatterFeature.WHERE_CLAUSES)) {
            List<JCDiagnostic> whereClauses = getWhereClauses();
            String indentString = ((AbstractDiagnosticFormatter) this.formatter).isRaw() ? "" : ((AbstractDiagnosticFormatter) this.formatter).indentString(2);
            Iterator<JCDiagnostic> it = whereClauses.iterator();
            while (it.hasNext()) {
                String format = ((AbstractDiagnosticFormatter) this.formatter).format(it.next(), locale);
                if (format.length() > 0) {
                    sb2.append('\n' + indentString + format);
                }
            }
        }
        return sb2.toString();
    }

    @Override
    public String formatMessage(JCDiagnostic jCDiagnostic, Locale locale) {
        this.nameSimplifier = new ClassNameSimplifier();
        preprocessDiagnostic(jCDiagnostic);
        return super.formatMessage((RichDiagnosticFormatter) jCDiagnostic, locale);
    }

    @Override
    public RichConfiguration getConfiguration() {
        return (RichConfiguration) this.configuration;
    }
}
