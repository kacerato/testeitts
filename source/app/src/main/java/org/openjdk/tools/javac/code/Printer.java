package org.openjdk.tools.javac.code;

import java.util.Iterator;
import java.util.Locale;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.javac.api.Messages;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import w2.C15883c;

public abstract class Printer implements Type.Visitor<String, Locale>, Symbol.Visitor<String, Locale> {
    static final int PRIME = 997;
    List<Type> seenCaptured = List.nil();

    public static Printer createStandardPrinter(final Messages messages) {
        return new Printer() {
            @Override
            public String capturedVarId(Type.CapturedType capturedType, Locale locale) {
                return ((capturedType.hashCode() & 4294967295L) % 997) + "";
            }

            @Override
            public String localize(Locale locale, String str, Object... objArr) {
                return Messages.this.getLocalizedString(locale, str, objArr);
            }

            @Override
            public String visitArrayType(Type.ArrayType arrayType, Locale locale) {
                return super.visitArrayType(arrayType, locale);
            }

            @Override
            public String visitCapturedType(Type.CapturedType capturedType, Locale locale) {
                return super.visitCapturedType(capturedType, locale);
            }

            @Override
            public String visitClassSymbol(Symbol.ClassSymbol classSymbol, Locale locale) {
                return super.visitClassSymbol(classSymbol, locale);
            }

            @Override
            public String visitClassType(Type.ClassType classType, Locale locale) {
                return super.visitClassType(classType, locale);
            }

            @Override
            public String visitErrorType(Type.ErrorType errorType, Locale locale) {
                return super.visitErrorType(errorType, locale);
            }

            @Override
            public String visitForAll(Type.ForAll forAll, Locale locale) {
                return super.visitForAll(forAll, locale);
            }

            @Override
            public String visitMethodSymbol(Symbol.MethodSymbol methodSymbol, Locale locale) {
                return super.visitMethodSymbol(methodSymbol, locale);
            }

            @Override
            public String visitMethodType(Type.MethodType methodType, Locale locale) {
                return super.visitMethodType(methodType, locale);
            }

            @Override
            public String visitModuleType(Type.ModuleType moduleType, Locale locale) {
                return super.visitModuleType(moduleType, locale);
            }

            @Override
            public String visitOperatorSymbol(Symbol.OperatorSymbol operatorSymbol, Locale locale) {
                return super.visitOperatorSymbol(operatorSymbol, locale);
            }

            @Override
            public String visitPackageSymbol(Symbol.PackageSymbol packageSymbol, Locale locale) {
                return super.visitPackageSymbol(packageSymbol, locale);
            }

            @Override
            public String visitPackageType(Type.PackageType packageType, Locale locale) {
                return super.visitPackageType(packageType, locale);
            }

            @Override
            public String visitSymbol(Symbol symbol, Locale locale) {
                return super.visitSymbol(symbol, locale);
            }

            @Override
            public String visitType(Type type, Locale locale) {
                return super.visitType(type, locale);
            }

            @Override
            public String visitTypeSymbol(Symbol.TypeSymbol typeSymbol, Locale locale) {
                return super.visitTypeSymbol(typeSymbol, locale);
            }

            @Override
            public String visitTypeVar(Type.TypeVar typeVar, Locale locale) {
                return super.visitTypeVar(typeVar, locale);
            }

            @Override
            public String visitUndetVar(Type.UndetVar undetVar, Locale locale) {
                return super.visitUndetVar(undetVar, locale);
            }

            @Override
            public String visitVarSymbol(Symbol.VarSymbol varSymbol, Locale locale) {
                return super.visitVarSymbol(varSymbol, locale);
            }

            @Override
            public String visitWildcardType(Type.WildcardType wildcardType, Locale locale) {
                return super.visitWildcardType(wildcardType, locale);
            }
        };
    }

    private String printAnnotations(Type type) {
        return printAnnotations(type, false);
    }

    private void printBaseElementType(Type type, StringBuilder sb2, Locale locale) {
        while (type.hasTag(TypeTag.ARRAY)) {
            type = ((Type.ArrayType) type).elemtype;
        }
        sb2.append(visit(type, locale));
    }

    private void printBrackets(Type type, StringBuilder sb2, Locale locale) {
        while (type.hasTag(TypeTag.ARRAY)) {
            sb2.append(printAnnotations(type, true));
            sb2.append(okhttp3.v.f99450n);
            type = ((Type.ArrayType) type).elemtype;
        }
    }

    public abstract String capturedVarId(Type.CapturedType capturedType, Locale locale);

    /* JADX WARN: Multi-variable type inference failed */
    public String className(Type.ClassType classType, boolean z10, Locale locale) {
        Symbol.TypeSymbol typeSymbol = classType.tsym;
        if (typeSymbol.name.length() != 0 || (typeSymbol.flags() & 16777216) == 0) {
            if (typeSymbol.name.length() != 0) {
                return z10 ? typeSymbol.getQualifiedName().toString() : typeSymbol.name.toString();
            }
            Type.ClassType classType2 = (Type.ClassType) classType.tsym.type;
            if (classType2 == null) {
                return localize(locale, "compiler.misc.anonymous.class", null);
            }
            List<Type> list = classType2.interfaces_field;
            return (list == null || !list.nonEmpty()) ? localize(locale, "compiler.misc.anonymous.class", visit(classType2.supertype_field, locale)) : localize(locale, "compiler.misc.anonymous.class", visit(classType2.interfaces_field.head, locale));
        }
        StringBuilder sb2 = new StringBuilder(visit(classType.supertype_field, locale));
        for (List list2 = classType.interfaces_field; list2.nonEmpty(); list2 = list2.tail) {
            sb2.append('&');
            sb2.append(visit((Type) list2.head, locale));
        }
        return sb2.toString();
    }

    public abstract String localize(Locale locale, String str, Object... objArr);

    public String printMethodArgs(List<Type> list, boolean z10, Locale locale) {
        if (!z10) {
            return visitTypes(list, locale);
        }
        StringBuilder sb2 = new StringBuilder();
        List<Type> list2 = list;
        while (list2.tail.nonEmpty()) {
            sb2.append(visit(list2.head, locale));
            List<Type> list3 = list2.tail;
            sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            list2 = list3;
        }
        if (list2.head.hasTag(TypeTag.ARRAY)) {
            sb2.append(visit(((Type.ArrayType) list2.head).elemtype, locale));
            if (list2.head.getAnnotationMirrors().nonEmpty()) {
                sb2.append(C15883c.f126249O);
                sb2.append((Object) list2.head.getAnnotationMirrors());
                sb2.append(C15883c.f126249O);
            }
            sb2.append("...");
        } else {
            sb2.append(visit(list2.head, locale));
        }
        return sb2.toString();
    }

    public String visit(Type type, Locale locale) {
        return (String) type.accept((Type.Visitor<R, Printer>) this, (Printer) locale);
    }

    public String visitSymbols(List<Symbol> list, Locale locale) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Symbol> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(visit(it.next(), locale));
        }
        return listBuffer.toList().toString();
    }

    public String visitTypes(List<Type> list, Locale locale) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(visit(it.next(), locale));
        }
        return listBuffer.toList().toString();
    }

    private String printAnnotations(Type type, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        List<Attribute.TypeCompound> annotationMirrors = type.getAnnotationMirrors();
        if (!annotationMirrors.isEmpty()) {
            if (z10) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append((Object) annotationMirrors);
            sb2.append(C15883c.f126249O);
        }
        return sb2.toString();
    }

    public String visit(Symbol symbol, Locale locale) {
        return (String) symbol.accept((Symbol.Visitor<R, Printer>) this, (Printer) locale);
    }

    @Override
    public String visitArrayType(Type.ArrayType arrayType, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        printBaseElementType(arrayType, sb2, locale);
        printBrackets(arrayType, sb2, locale);
        return sb2.toString();
    }

    @Override
    public String visitCapturedType(Type.CapturedType capturedType, Locale locale) {
        if (this.seenCaptured.contains(capturedType)) {
            return printAnnotations(capturedType) + localize(locale, "compiler.misc.type.captureof.1", capturedVarId(capturedType, locale));
        }
        try {
            this.seenCaptured = this.seenCaptured.prepend(capturedType);
            return printAnnotations(capturedType) + localize(locale, "compiler.misc.type.captureof", capturedVarId(capturedType, locale), visit(capturedType.wildcard, locale));
        } finally {
            this.seenCaptured = this.seenCaptured.tail;
        }
    }

    @Override
    public String visitClassSymbol(Symbol.ClassSymbol classSymbol, Locale locale) {
        if (classSymbol.name.isEmpty()) {
            return localize(locale, "compiler.misc.anonymous.class", classSymbol.flatname);
        }
        return classSymbol.fullname.toString();
    }

    @Override
    public String visitClassType(Type.ClassType classType, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        if (classType.getEnclosingType().hasTag(TypeTag.CLASS) && classType.tsym.owner.kind == Kinds.Kind.TYP) {
            sb2.append(visit(classType.getEnclosingType(), locale));
            sb2.append('.');
            sb2.append(printAnnotations(classType));
            sb2.append(className(classType, false, locale));
        } else {
            sb2.append(printAnnotations(classType));
            sb2.append(className(classType, true, locale));
        }
        if (classType.getTypeArguments().nonEmpty()) {
            sb2.append('<');
            sb2.append(visitTypes(classType.getTypeArguments(), locale));
            sb2.append('>');
        }
        return sb2.toString();
    }

    @Override
    public String visitErrorType(Type.ErrorType errorType, Locale locale) {
        return visitType((Type) errorType, locale);
    }

    @Override
    public String visitForAll(Type.ForAll forAll, Locale locale) {
        return printAnnotations(forAll) + "<" + visitTypes(forAll.tvars, locale) + ">" + visit(forAll.qtype, locale);
    }

    @Override
    public String visitMethodSymbol(Symbol.MethodSymbol methodSymbol, Locale locale) {
        String name;
        if (methodSymbol.isStaticOrInstanceInit()) {
            return methodSymbol.owner.name.toString();
        }
        Name name2 = methodSymbol.name;
        if (name2 == name2.table.names.init) {
            name = methodSymbol.owner.name.toString();
        } else {
            name = name2.toString();
        }
        Type type = methodSymbol.type;
        if (type == null) {
            return name;
        }
        if (type.hasTag(TypeTag.FORALL)) {
            name = "<" + visitTypes(methodSymbol.type.getTypeArguments(), locale) + ">" + name;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(name);
        sb2.append("(");
        sb2.append(printMethodArgs(methodSymbol.type.getParameterTypes(), (methodSymbol.flags() & 17179869184L) != 0, locale));
        sb2.append(")");
        return sb2.toString();
    }

    @Override
    public String visitMethodType(Type.MethodType methodType, Locale locale) {
        return "(" + printMethodArgs(methodType.argtypes, false, locale) + ")" + visit(methodType.restype, locale);
    }

    @Override
    public String visitModuleType(Type.ModuleType moduleType, Locale locale) {
        return visitType((Type) moduleType, locale);
    }

    @Override
    public String visitOperatorSymbol(Symbol.OperatorSymbol operatorSymbol, Locale locale) {
        return visitMethodSymbol((Symbol.MethodSymbol) operatorSymbol, locale);
    }

    @Override
    public String visitPackageSymbol(Symbol.PackageSymbol packageSymbol, Locale locale) {
        if (packageSymbol.isUnnamed()) {
            return localize(locale, "compiler.misc.unnamed.package", new Object[0]);
        }
        return packageSymbol.fullname.toString();
    }

    @Override
    public String visitPackageType(Type.PackageType packageType, Locale locale) {
        return packageType.tsym.getQualifiedName().toString();
    }

    @Override
    public String visitSymbol(Symbol symbol, Locale locale) {
        return symbol.name.toString();
    }

    @Override
    public String visitType(Type type, Locale locale) {
        Name name;
        Symbol.TypeSymbol typeSymbol = type.tsym;
        if (typeSymbol != null && (name = typeSymbol.name) != null) {
            return name.toString();
        }
        return localize(locale, "compiler.misc.type.none", new Object[0]);
    }

    @Override
    public String visitTypeSymbol(Symbol.TypeSymbol typeSymbol, Locale locale) {
        return visitSymbol((Symbol) typeSymbol, locale);
    }

    @Override
    public String visitTypeVar(Type.TypeVar typeVar, Locale locale) {
        return visitType((Type) typeVar, locale);
    }

    @Override
    public String visitUndetVar(Type.UndetVar undetVar, Locale locale) {
        if (undetVar.getInst() != null) {
            return printAnnotations(undetVar) + visit(undetVar.getInst(), locale);
        }
        return printAnnotations(undetVar) + visit(undetVar.qtype, locale) + "?";
    }

    @Override
    public String visitVarSymbol(Symbol.VarSymbol varSymbol, Locale locale) {
        return visitSymbol((Symbol) varSymbol, locale);
    }

    @Override
    public String visitWildcardType(Type.WildcardType wildcardType, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) wildcardType.kind);
        if (wildcardType.kind != BoundKind.UNBOUND) {
            sb2.append(printAnnotations(wildcardType));
            sb2.append(visit(wildcardType.type, locale));
        }
        return sb2.toString();
    }
}
