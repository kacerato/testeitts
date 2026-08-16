package org.openjdk.tools.javac.processing;

import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.javax.annotation.processing.AbstractProcessor;
import org.openjdk.javax.annotation.processing.RoundEnvironment;
import org.openjdk.javax.annotation.processing.SupportedAnnotationTypes;
import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.Parameterizable;
import org.openjdk.javax.lang.model.element.QualifiedNameable;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.SimpleElementVisitor7;
import org.openjdk.javax.lang.model.util.SimpleElementVisitor9;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.util.StringUtils;

@SupportedSourceVersion(SourceVersion.RELEASE_9)
@SupportedAnnotationTypes({"*"})
public class PrintingProcessor extends AbstractProcessor {
    PrintWriter writer = new PrintWriter(System.out);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;

        static {
            int[] iArr = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr;
            try {
                iArr[ElementKind.CONSTRUCTOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.METHOD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ANNOTATION_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INTERFACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.FIELD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static class PrintingElementVisitor extends SimpleElementVisitor9<PrintingElementVisitor, Boolean> {
        private static final String[] spaces = {"", GlideException.a.f59088e, C13155a.f85806a, "      ", "        ", "          ", "            ", "              ", "                ", "                  ", "                    "};
        final Elements elementUtils;
        int indentation = 0;
        final PrintWriter writer;

        public static class PrintDirective implements ModuleElement.DirectiveVisitor<Void, Void> {
            private final PrintWriter writer;

            public PrintDirective(PrintWriter printWriter) {
                this.writer = printWriter;
            }

            private void printModuleList(List<? extends ModuleElement> list) {
                if (list != null) {
                    this.writer.print(" to ");
                    printNameableList(list);
                }
            }

            private void printNameableList(List<? extends QualifiedNameable> list) {
                this.writer.print((String) list.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((QualifiedNameable) obj).getQualifiedName();
                    }
                }).collect(Collectors.joining(", ")));
            }

            @Override
            public Void visitExports(ModuleElement.ExportsDirective exportsDirective, Void r32) {
                this.writer.print("exports ");
                this.writer.print(exportsDirective.getPackage().getQualifiedName());
                printModuleList(exportsDirective.getTargetModules());
                return null;
            }

            @Override
            public Void visitOpens(ModuleElement.OpensDirective opensDirective, Void r32) {
                this.writer.print("opens ");
                this.writer.print(opensDirective.getPackage().getQualifiedName());
                printModuleList(opensDirective.getTargetModules());
                return null;
            }

            @Override
            public Void visitProvides(ModuleElement.ProvidesDirective providesDirective, Void r32) {
                this.writer.print("provides ");
                this.writer.print(providesDirective.getService().getQualifiedName());
                this.writer.print(" with ");
                printNameableList(providesDirective.getImplementations());
                return null;
            }

            @Override
            public Void visitRequires(ModuleElement.RequiresDirective requiresDirective, Void r32) {
                this.writer.print("requires ");
                if (requiresDirective.isStatic()) {
                    this.writer.print("static ");
                }
                if (requiresDirective.isTransitive()) {
                    this.writer.print("transitive ");
                }
                this.writer.print(requiresDirective.getDependency().getQualifiedName());
                return null;
            }

            @Override
            public Void visitUses(ModuleElement.UsesDirective usesDirective, Void r32) {
                this.writer.print("uses ");
                this.writer.print(usesDirective.getService().getQualifiedName());
                return null;
            }
        }

        public PrintingElementVisitor(Writer writer, Elements elements) {
            this.writer = new PrintWriter(writer);
            this.elementUtils = elements;
        }

        private void indent() {
            int i10 = this.indentation;
            if (i10 < 0) {
                return;
            }
            int length = spaces.length - 1;
            while (i10 > length) {
                this.writer.print(spaces[length]);
                i10 -= length;
            }
            this.writer.print(spaces[i10]);
        }

        private void printAnnotations(Element element) {
            for (AnnotationMirror annotationMirror : element.getAnnotationMirrors()) {
                indent();
                this.writer.println(annotationMirror);
            }
        }

        private void printAnnotationsInline(Element element) {
            Iterator<? extends AnnotationMirror> it = element.getAnnotationMirrors().iterator();
            while (it.hasNext()) {
                this.writer.print(it.next());
                this.writer.print(" ");
            }
        }

        private void printDirective(ModuleElement.Directive directive) {
            indent();
            new PrintDirective(this.writer).visit(directive);
            this.writer.println(";");
        }

        private void printDocComment(Element element) {
            String docComment = this.elementUtils.getDocComment(element);
            if (docComment != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(docComment, "\n\r");
                indent();
                this.writer.println("/**");
                while (stringTokenizer.hasMoreTokens()) {
                    indent();
                    this.writer.print(" *");
                    this.writer.println(stringTokenizer.nextToken());
                }
                indent();
                this.writer.println(" */");
            }
        }

        private void printFormalTypeParameters(Parameterizable parameterizable, boolean z10) {
            List<? extends TypeParameterElement> typeParameters = parameterizable.getTypeParameters();
            if (typeParameters.size() > 0) {
                this.writer.print("<");
                boolean z11 = true;
                for (TypeParameterElement typeParameterElement : typeParameters) {
                    if (!z11) {
                        this.writer.print(", ");
                    }
                    printAnnotationsInline(typeParameterElement);
                    this.writer.print(typeParameterElement.toString());
                    z11 = false;
                }
                this.writer.print(">");
                if (z10) {
                    this.writer.print(" ");
                }
            }
        }

        private void printInterfaces(TypeElement typeElement) {
            ElementKind kind = typeElement.getKind();
            if (kind != ElementKind.ANNOTATION_TYPE) {
                List<? extends TypeMirror> interfaces = typeElement.getInterfaces();
                if (interfaces.size() > 0) {
                    this.writer.print(kind.isClass() ? " implements" : " extends");
                    boolean z10 = true;
                    for (TypeMirror typeMirror : interfaces) {
                        if (!z10) {
                            this.writer.print(DocLint.SEPARATOR);
                        }
                        this.writer.print(" ");
                        this.writer.print(typeMirror.toString());
                        z10 = false;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        
            if (r0 != 6) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007a A[LOOP:0: B:19:0x0074->B:21:0x007a, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void printModifiers(Element element) {
            ElementKind kind = element.getKind();
            if (kind == ElementKind.PARAMETER) {
                printAnnotationsInline(element);
            } else {
                printAnnotations(element);
                indent();
            }
            if (kind == ElementKind.ENUM_CONSTANT) {
                return;
            }
            LinkedHashSet<Modifier> linkedHashSet = new LinkedHashSet();
            linkedHashSet.addAll(element.getModifiers());
            int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()];
            if (i10 != 2) {
                if (i10 == 3 || i10 == 4) {
                    linkedHashSet.remove(Modifier.ABSTRACT);
                } else if (i10 == 5) {
                    linkedHashSet.remove(Modifier.FINAL);
                    linkedHashSet.remove(Modifier.ABSTRACT);
                }
                for (Modifier modifier : linkedHashSet) {
                    this.writer.print(modifier.toString() + " ");
                }
            }
            Element enclosingElement = element.getEnclosingElement();
            if (enclosingElement != null && enclosingElement.getKind().isInterface()) {
                linkedHashSet.remove(Modifier.PUBLIC);
                linkedHashSet.remove(Modifier.ABSTRACT);
                linkedHashSet.remove(Modifier.STATIC);
                linkedHashSet.remove(Modifier.FINAL);
            }
            while (r4.hasNext()) {
            }
        }

        private void printParameters(ExecutableElement executableElement) {
            List<? extends VariableElement> parameters = executableElement.getParameters();
            int size = parameters.size();
            if (size != 0) {
                if (size == 1) {
                    for (VariableElement variableElement : parameters) {
                        printModifiers(variableElement);
                        if (executableElement.isVarArgs()) {
                            TypeMirror asType = variableElement.asType();
                            if (asType.getKind() != TypeKind.ARRAY) {
                                throw new AssertionError((Object) ("Var-args parameter is not an array type: " + ((Object) asType)));
                            }
                            this.writer.print(((ArrayType) ArrayType.class.cast(asType)).getComponentType());
                            this.writer.print("...");
                        } else {
                            this.writer.print(variableElement.asType());
                        }
                        this.writer.print(" " + ((Object) variableElement.getSimpleName()));
                    }
                    return;
                }
                int i10 = 1;
                for (VariableElement variableElement2 : parameters) {
                    if (i10 == 2) {
                        this.indentation++;
                    }
                    if (i10 > 1) {
                        indent();
                    }
                    printModifiers(variableElement2);
                    if (i10 == size && executableElement.isVarArgs()) {
                        TypeMirror asType2 = variableElement2.asType();
                        if (asType2.getKind() != TypeKind.ARRAY) {
                            throw new AssertionError((Object) ("Var-args parameter is not an array type: " + ((Object) asType2)));
                        }
                        this.writer.print(((ArrayType) ArrayType.class.cast(asType2)).getComponentType());
                        this.writer.print("...");
                    } else {
                        this.writer.print(variableElement2.asType());
                    }
                    this.writer.print(" " + ((Object) variableElement2.getSimpleName()));
                    if (i10 < size) {
                        this.writer.println(DocLint.SEPARATOR);
                    }
                    i10++;
                }
                if (parameters.size() >= 2) {
                    this.indentation--;
                }
            }
        }

        private void printThrows(ExecutableElement executableElement) {
            List<? extends TypeMirror> thrownTypes = executableElement.getThrownTypes();
            int size = thrownTypes.size();
            if (size != 0) {
                this.writer.print(" throws");
                int i10 = 1;
                for (TypeMirror typeMirror : thrownTypes) {
                    if (i10 == 1) {
                        this.writer.print(" ");
                    }
                    if (i10 == 2) {
                        this.indentation++;
                    }
                    if (i10 >= 2) {
                        indent();
                    }
                    this.writer.print(typeMirror);
                    if (i10 != size) {
                        this.writer.println(", ");
                    }
                    i10++;
                }
                if (size >= 2) {
                    this.indentation--;
                }
            }
        }

        public void flush() {
            this.writer.flush();
        }

        @Override
        public PrintingElementVisitor defaultAction(Element element, Boolean bool) {
            if (bool != null && bool.booleanValue()) {
                this.writer.println();
            }
            printDocComment(element);
            printModifiers(element);
            return this;
        }

        @Override
        public PrintingElementVisitor visitExecutable(ExecutableElement executableElement, Boolean bool) {
            ElementKind kind = executableElement.getKind();
            if (kind != ElementKind.STATIC_INIT && kind != ElementKind.INSTANCE_INIT) {
                Element enclosingElement = executableElement.getEnclosingElement();
                if (kind == ElementKind.CONSTRUCTOR && enclosingElement != null && NestingKind.ANONYMOUS == new SimpleElementVisitor7<NestingKind, Void>() {
                    @Override
                    public NestingKind visitType(TypeElement typeElement, Void r22) {
                        return typeElement.getNestingKind();
                    }
                }.visit(enclosingElement)) {
                    return this;
                }
                defaultAction((Element) executableElement, Boolean.TRUE);
                printFormalTypeParameters(executableElement, true);
                int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()];
                if (i10 == 1) {
                    this.writer.print(executableElement.getEnclosingElement().getSimpleName());
                } else if (i10 == 2) {
                    this.writer.print(executableElement.getReturnType().toString());
                    this.writer.print(" ");
                    this.writer.print(executableElement.getSimpleName().toString());
                }
                this.writer.print("(");
                printParameters(executableElement);
                this.writer.print(")");
                AnnotationValue defaultValue = executableElement.getDefaultValue();
                if (defaultValue != null) {
                    this.writer.print(" default " + ((Object) defaultValue));
                }
                printThrows(executableElement);
                this.writer.println(";");
            }
            return this;
        }

        @Override
        public PrintingElementVisitor visitModule(ModuleElement moduleElement, Boolean bool) {
            defaultAction((Element) moduleElement, Boolean.FALSE);
            if (!moduleElement.isUnnamed()) {
                if (moduleElement.isOpen()) {
                    this.writer.print("open ");
                }
                this.writer.println("module " + ((Object) moduleElement.getQualifiedName()) + " {");
                this.indentation = this.indentation + 1;
                Iterator<? extends ModuleElement.Directive> it = moduleElement.getDirectives().iterator();
                while (it.hasNext()) {
                    printDirective(it.next());
                }
                this.indentation--;
                this.writer.println(VectorFormat.DEFAULT_SUFFIX);
            } else {
                this.writer.println("// Unnamed module");
            }
            return this;
        }

        @Override
        public PrintingElementVisitor visitPackage(PackageElement packageElement, Boolean bool) {
            defaultAction((Element) packageElement, Boolean.FALSE);
            if (!packageElement.isUnnamed()) {
                this.writer.println("package " + ((Object) packageElement.getQualifiedName()) + ";");
            } else {
                this.writer.println("// Unnamed package");
            }
            return this;
        }

        @Override
        public PrintingElementVisitor visitType(TypeElement typeElement, Boolean bool) {
            ElementKind kind = typeElement.getKind();
            NestingKind nestingKind = typeElement.getNestingKind();
            int i10 = 0;
            if (NestingKind.ANONYMOUS == nestingKind) {
                this.writer.print("new ");
                List<? extends TypeMirror> interfaces = typeElement.getInterfaces();
                if (!interfaces.isEmpty()) {
                    this.writer.print(interfaces.get(0));
                } else {
                    this.writer.print(typeElement.getSuperclass());
                }
                this.writer.print("(");
                if (interfaces.isEmpty()) {
                    List<ExecutableElement> constructorsIn = ElementFilter.constructorsIn(typeElement.getEnclosedElements());
                    if (!constructorsIn.isEmpty()) {
                        printParameters(constructorsIn.get(0));
                    }
                }
                this.writer.print(")");
            } else {
                if (nestingKind == NestingKind.TOP_LEVEL) {
                    PackageElement packageOf = this.elementUtils.getPackageOf(typeElement);
                    if (!packageOf.isUnnamed()) {
                        this.writer.print("package " + ((Object) packageOf.getQualifiedName()) + ";\n");
                    }
                }
                defaultAction((Element) typeElement, Boolean.TRUE);
                if (AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()] != 3) {
                    this.writer.print(StringUtils.toLowerCase(kind.toString()));
                } else {
                    this.writer.print("@interface");
                }
                this.writer.print(" ");
                this.writer.print(typeElement.getSimpleName());
                printFormalTypeParameters(typeElement, false);
                if (kind == ElementKind.CLASS) {
                    TypeMirror superclass = typeElement.getSuperclass();
                    TypeKind kind2 = superclass.getKind();
                    TypeKind typeKind = TypeKind.NONE;
                    if (kind2 != typeKind && ((TypeElement) ((DeclaredType) superclass).asElement()).getSuperclass().getKind() != typeKind) {
                        this.writer.print(" extends " + ((Object) superclass));
                    }
                }
                printInterfaces(typeElement);
            }
            this.writer.println(" {");
            this.indentation++;
            if (kind == ElementKind.ENUM) {
                ArrayList<Element> arrayList = new ArrayList(typeElement.getEnclosedElements());
                ArrayList arrayList2 = new ArrayList();
                for (Element element : arrayList) {
                    if (element.getKind() == ElementKind.ENUM_CONSTANT) {
                        arrayList2.add(element);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    while (i10 < arrayList2.size() - 1) {
                        visit((Element) arrayList2.get(i10), Boolean.TRUE);
                        this.writer.print(DocLint.SEPARATOR);
                        i10++;
                    }
                    visit((Element) arrayList2.get(i10), Boolean.TRUE);
                    this.writer.println(";\n");
                    arrayList.removeAll(arrayList2);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    visit((Element) it.next());
                }
            } else {
                Iterator<? extends Element> it2 = typeElement.getEnclosedElements().iterator();
                while (it2.hasNext()) {
                    visit(it2.next());
                }
            }
            this.indentation--;
            indent();
            this.writer.println(VectorFormat.DEFAULT_SUFFIX);
            return this;
        }

        @Override
        public PrintingElementVisitor visitTypeParameter(TypeParameterElement typeParameterElement, Boolean bool) {
            this.writer.print(typeParameterElement.getSimpleName());
            return this;
        }

        @Override
        public PrintingElementVisitor visitVariable(VariableElement variableElement, Boolean bool) {
            ElementKind kind = variableElement.getKind();
            defaultAction((Element) variableElement, bool);
            if (kind == ElementKind.ENUM_CONSTANT) {
                this.writer.print(variableElement.getSimpleName());
            } else {
                this.writer.print(variableElement.asType().toString() + " " + ((Object) variableElement.getSimpleName()));
                Object constantValue = variableElement.getConstantValue();
                if (constantValue != null) {
                    this.writer.print(" = ");
                    this.writer.print(this.elementUtils.getConstantExpression(constantValue));
                }
                this.writer.println(";");
            }
            return this;
        }
    }

    public void print(Element element) {
        new PrintingElementVisitor(this.writer, this.processingEnv.getElementUtils()).visit(element).flush();
    }

    @Override
    public boolean process(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
        Iterator<? extends Element> it = roundEnvironment.getRootElements().iterator();
        while (it.hasNext()) {
            print(it.next());
        }
        return true;
    }

    public void setWriter(Writer writer) {
        this.writer = new PrintWriter(writer);
    }
}
