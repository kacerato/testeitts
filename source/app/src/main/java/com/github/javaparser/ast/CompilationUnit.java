package com.github.javaparser.ast;

import com.github.javaparser.JavaParser;
import com.github.javaparser.JavaToken;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParseStart;
import com.github.javaparser.Position;
import com.github.javaparser.Providers;
import com.github.javaparser.Range;
import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.CompilationUnitMetaModel;
import com.github.javaparser.metamodel.InternalProperty;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.OptionalProperty;
import com.github.javaparser.printer.ConfigurablePrinter;
import com.github.javaparser.printer.Printer;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import com.github.javaparser.utils.ClassUtils;
import com.github.javaparser.utils.CodeGenerationUtils;
import com.github.javaparser.utils.Utils;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class CompilationUnit extends Node {
    private static final String JAVA_LANG = "java.lang";
    private NodeList<ImportDeclaration> imports;

    @OptionalProperty
    private ModuleDeclaration module;

    @OptionalProperty
    private PackageDeclaration packageDeclaration;

    @InternalProperty
    private Storage storage;
    private NodeList<TypeDeclaration<?>> types;

    public static class Storage {
        private final CompilationUnit compilationUnit;
        private final Charset encoding;
        private final Path path;

        public static Path lambda$getSourceRoot$0(String p10) {
            return Paths.get(CodeGenerationUtils.packageToPath(p10), new String[0]);
        }

        public Path lambda$getSourceRoot$1(Path pkg) {
            return CodeGenerationUtils.subtractPaths(lambda$getSourceRoot$2(), pkg);
        }

        public String lambda$save$3(CompilationUnit cu) {
            return this.compilationUnit.getPrinter().print(cu);
        }

        public CompilationUnit getCompilationUnit() {
            return this.compilationUnit;
        }

        public Path lambda$getSourceRoot$2() {
            return this.path.getParent();
        }

        public Charset getEncoding() {
            return this.encoding;
        }

        public String getFileName() {
            return this.path.getFileName().toString();
        }

        public Path getPath() {
            return this.path;
        }

        public Path getSourceRoot() {
            return (Path) this.compilationUnit.getPackageDeclaration().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((PackageDeclaration) obj).getNameAsString();
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Path lambda$getSourceRoot$0;
                    lambda$getSourceRoot$0 = CompilationUnit.Storage.lambda$getSourceRoot$0((String) obj);
                    return lambda$getSourceRoot$0;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Path lambda$getSourceRoot$1;
                    lambda$getSourceRoot$1 = CompilationUnit.Storage.this.lambda$getSourceRoot$1((Path) obj);
                    return lambda$getSourceRoot$1;
                }
            }).orElseGet(new Supplier() {
                @Override
                public final Object get() {
                    Path lambda$getSourceRoot$2;
                    lambda$getSourceRoot$2 = CompilationUnit.Storage.this.lambda$getSourceRoot$2();
                    return lambda$getSourceRoot$2;
                }
            });
        }

        public ParseResult<CompilationUnit> reparse(JavaParser javaParser) {
            try {
                return javaParser.parse(ParseStart.COMPILATION_UNIT, Providers.provider(getPath()));
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        public void save() {
            save(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$save$3;
                    lambda$save$3 = CompilationUnit.Storage.this.lambda$save$3((CompilationUnit) obj);
                    return lambda$save$3;
                }
            });
        }

        public void save(Function<CompilationUnit, String> makeOutput) {
            save(makeOutput, this.encoding);
        }

        private Storage(CompilationUnit compilationUnit, Path path) {
            this(compilationUnit, path, Providers.UTF8);
        }

        public void save(Function<CompilationUnit, String> makeOutput, Charset encoding) {
            try {
                Files.createDirectories(this.path.getParent(), new FileAttribute[0]);
                Files.write(this.path, makeOutput.apply(getCompilationUnit()).getBytes(encoding), new OpenOption[0]);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        private Storage(CompilationUnit compilationUnit, Path path, Charset encoding) {
            this.compilationUnit = compilationUnit;
            this.path = path.toAbsolutePath();
            this.encoding = encoding;
        }
    }

    public CompilationUnit() {
        this(null, null, new NodeList(), new NodeList(), null);
    }

    private static Optional<Name> getImportPackageName(ImportDeclaration importDeclaration) {
        return (importDeclaration.isAsterisk() ? new Name(importDeclaration.getName(), "*") : importDeclaration.getName()).getQualifier();
    }

    private boolean isImplicitImport(ImportDeclaration importDeclaration) {
        Optional<Name> importPackageName = getImportPackageName(importDeclaration);
        if (!importPackageName.isPresent() || StaticJavaParser.parseName(JAVA_LANG).equals(importPackageName.get())) {
            return true;
        }
        PackageDeclaration packageDeclaration = this.packageDeclaration;
        if (packageDeclaration != null) {
            return packageDeclaration.getName().equals(importPackageName.get());
        }
        return false;
    }

    public static boolean lambda$addImport$0(final ImportDeclaration importDeclaration, ImportDeclaration im2) {
        return Objects.equals(getImportPackageName(im2).get(), getImportPackageName(importDeclaration).orElse(null));
    }

    public static boolean lambda$addImport$1(final ImportDeclaration importDeclaration, ImportDeclaration im2) {
        return im2.equals(importDeclaration) || (im2.isAsterisk() && Objects.equals(getImportPackageName(im2).get(), getImportPackageName(importDeclaration).orElse(null)));
    }

    public static boolean lambda$getAnnotationDeclarationByName$11(final String annotationName, TypeDeclaration type) {
        return type.getNameAsString().equals(annotationName) && (type instanceof AnnotationDeclaration);
    }

    public static AnnotationDeclaration lambda$getAnnotationDeclarationByName$12(TypeDeclaration t10) {
        return (AnnotationDeclaration) t10;
    }

    public static boolean lambda$getClassByName$2(final String className, TypeDeclaration type) {
        return type.getNameAsString().equals(className) && (type instanceof ClassOrInterfaceDeclaration) && !((ClassOrInterfaceDeclaration) type).isInterface();
    }

    public static ClassOrInterfaceDeclaration lambda$getClassByName$3(TypeDeclaration t10) {
        return (ClassOrInterfaceDeclaration) t10;
    }

    public static boolean lambda$getEnumByName$7(final String enumName, TypeDeclaration type) {
        return type.getNameAsString().equals(enumName) && (type instanceof EnumDeclaration);
    }

    public static EnumDeclaration lambda$getEnumByName$8(TypeDeclaration t10) {
        return (EnumDeclaration) t10;
    }

    public static boolean lambda$getInterfaceByName$5(final String interfaceName, TypeDeclaration type) {
        return type.getNameAsString().equals(interfaceName) && (type instanceof ClassOrInterfaceDeclaration) && ((ClassOrInterfaceDeclaration) type).isInterface();
    }

    public static ClassOrInterfaceDeclaration lambda$getInterfaceByName$6(TypeDeclaration t10) {
        return (ClassOrInterfaceDeclaration) t10;
    }

    public static boolean lambda$getLocalDeclarationFromClassname$4(final String className, ClassOrInterfaceDeclaration cid) {
        return cid.getFullyQualifiedName().get().endsWith(className);
    }

    public Optional lambda$getPrimaryType$10(final String name) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$null$9;
                lambda$null$9 = CompilationUnit.lambda$null$9(String.this, (TypeDeclaration) obj);
                return lambda$null$9;
            }
        }).findFirst();
    }

    public static boolean lambda$getRecordByName$13(final String recordName, TypeDeclaration type) {
        return type.getNameAsString().equals(recordName) && (type instanceof RecordDeclaration);
    }

    public static RecordDeclaration lambda$getRecordByName$14(TypeDeclaration t10) {
        return (RecordDeclaration) t10;
    }

    public static boolean lambda$null$9(final String name, TypeDeclaration t10) {
        return t10.getNameAsString().equals(name);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (CompilationUnit) arg);
    }

    public AnnotationDeclaration addAnnotationDeclaration(String name) {
        return addAnnotationDeclaration(name, Modifier.Keyword.PUBLIC);
    }

    public ClassOrInterfaceDeclaration addClass(String name) {
        return addClass(name, Modifier.Keyword.PUBLIC);
    }

    public EnumDeclaration addEnum(String name) {
        return addEnum(name, Modifier.Keyword.PUBLIC);
    }

    public CompilationUnit addImport(final ImportDeclaration importDeclaration) {
        if (importDeclaration.isAsterisk()) {
            getImports().removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$addImport$0;
                    lambda$addImport$0 = CompilationUnit.lambda$addImport$0(ImportDeclaration.this, (ImportDeclaration) obj);
                    return lambda$addImport$0;
                }
            });
        }
        if (!isImplicitImport(importDeclaration) && getImports().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$addImport$1;
                lambda$addImport$1 = CompilationUnit.lambda$addImport$1(ImportDeclaration.this, (ImportDeclaration) obj);
                return lambda$addImport$1;
            }
        })) {
            getImports().add((NodeList<ImportDeclaration>) importDeclaration);
        }
        return this;
    }

    public ClassOrInterfaceDeclaration addInterface(String name) {
        return addInterface(name, Modifier.Keyword.PUBLIC);
    }

    public CompilationUnit addType(TypeDeclaration<?> type) {
        NodeList nodeList = new NodeList();
        nodeList.addAll((NodeList) getTypes());
        getTypes().add((NodeList<TypeDeclaration<?>>) type);
        notifyPropertyChange(ObservableProperty.TYPES, nodeList, this.types);
        return this;
    }

    public List<Comment> getAllComments() {
        List<Comment> allContainedComments = getAllContainedComments();
        Optional<Comment> comment = getComment();
        allContainedComments.getClass();
        comment.ifPresent(new C11727n(allContainedComments));
        return allContainedComments;
    }

    public Optional<AnnotationDeclaration> getAnnotationDeclarationByName(final String annotationName) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getAnnotationDeclarationByName$11;
                lambda$getAnnotationDeclarationByName$11 = CompilationUnit.lambda$getAnnotationDeclarationByName$11(String.this, (TypeDeclaration) obj);
                return lambda$getAnnotationDeclarationByName$11;
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                AnnotationDeclaration lambda$getAnnotationDeclarationByName$12;
                lambda$getAnnotationDeclarationByName$12 = CompilationUnit.lambda$getAnnotationDeclarationByName$12((TypeDeclaration) obj);
                return lambda$getAnnotationDeclarationByName$12;
            }
        });
    }

    public Optional<ClassOrInterfaceDeclaration> getClassByName(final String className) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getClassByName$2;
                lambda$getClassByName$2 = CompilationUnit.lambda$getClassByName$2(String.this, (TypeDeclaration) obj);
                return lambda$getClassByName$2;
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ClassOrInterfaceDeclaration lambda$getClassByName$3;
                lambda$getClassByName$3 = CompilationUnit.lambda$getClassByName$3((TypeDeclaration) obj);
                return lambda$getClassByName$3;
            }
        });
    }

    @Deprecated
    public List<Comment> getComments() {
        List<Comment> allContainedComments = getAllContainedComments();
        Optional<Comment> comment = getComment();
        allContainedComments.getClass();
        comment.ifPresent(new C11727n(allContainedComments));
        return allContainedComments;
    }

    public Optional<EnumDeclaration> getEnumByName(final String enumName) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getEnumByName$7;
                lambda$getEnumByName$7 = CompilationUnit.lambda$getEnumByName$7(String.this, (TypeDeclaration) obj);
                return lambda$getEnumByName$7;
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                EnumDeclaration lambda$getEnumByName$8;
                lambda$getEnumByName$8 = CompilationUnit.lambda$getEnumByName$8((TypeDeclaration) obj);
                return lambda$getEnumByName$8;
            }
        });
    }

    public ImportDeclaration getImport(int i10) {
        return getImports().get(i10);
    }

    public NodeList<ImportDeclaration> getImports() {
        return this.imports;
    }

    public Optional<ClassOrInterfaceDeclaration> getInterfaceByName(final String interfaceName) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getInterfaceByName$5;
                lambda$getInterfaceByName$5 = CompilationUnit.lambda$getInterfaceByName$5(String.this, (TypeDeclaration) obj);
                return lambda$getInterfaceByName$5;
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                ClassOrInterfaceDeclaration lambda$getInterfaceByName$6;
                lambda$getInterfaceByName$6 = CompilationUnit.lambda$getInterfaceByName$6((TypeDeclaration) obj);
                return lambda$getInterfaceByName$6;
            }
        });
    }

    public List<ClassOrInterfaceDeclaration> getLocalDeclarationFromClassname(final String className) {
        return (List) findAll(ClassOrInterfaceDeclaration.class).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getLocalDeclarationFromClassname$4;
                lambda$getLocalDeclarationFromClassname$4 = CompilationUnit.lambda$getLocalDeclarationFromClassname$4(String.this, (ClassOrInterfaceDeclaration) obj);
                return lambda$getLocalDeclarationFromClassname$4;
            }
        }).collect(Collectors.toList());
    }

    public Optional<ModuleDeclaration> getModule() {
        return Optional.ofNullable(this.module);
    }

    public Optional<PackageDeclaration> getPackageDeclaration() {
        return Optional.ofNullable(this.packageDeclaration);
    }

    public Optional<TypeDeclaration<?>> getPrimaryType() {
        return getPrimaryTypeName().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$getPrimaryType$10;
                lambda$getPrimaryType$10 = CompilationUnit.this.lambda$getPrimaryType$10((String) obj);
                return lambda$getPrimaryType$10;
            }
        });
    }

    public Optional<String> getPrimaryTypeName() {
        return getStorage().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((CompilationUnit.Storage) obj).getFileName();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Utils.removeFileExtension((String) obj);
            }
        });
    }

    @Override
    public Printer getPrinter() {
        DataKey<Printer> dataKey = Node.PRINTER_KEY;
        if (!containsData(dataKey)) {
            printer(lambda$getPrinter$2());
        }
        return (Printer) getData(dataKey);
    }

    public Optional<RecordDeclaration> getRecordByName(final String recordName) {
        return getTypes().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$getRecordByName$13;
                lambda$getRecordByName$13 = CompilationUnit.lambda$getRecordByName$13(String.this, (TypeDeclaration) obj);
                return lambda$getRecordByName$13;
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                RecordDeclaration lambda$getRecordByName$14;
                lambda$getRecordByName$14 = CompilationUnit.lambda$getRecordByName$14((TypeDeclaration) obj);
                return lambda$getRecordByName$14;
            }
        });
    }

    public Optional<Storage> getStorage() {
        return Optional.ofNullable(this.storage);
    }

    public TypeDeclaration<?> getType(int i10) {
        return getTypes().get(i10);
    }

    public NodeList<TypeDeclaration<?>> getTypes() {
        return this.types;
    }

    public CompilationUnit printer(Printer printer) {
        setData(Node.PRINTER_KEY, printer);
        return this;
    }

    public void recalculatePositions() {
        if (!getTokenRange().isPresent()) {
            throw new IllegalStateException("Can't recalculate positions without tokens.");
        }
        Position position = Position.HOME;
        Iterator<JavaToken> it = getTokenRange().get().iterator();
        while (it.hasNext()) {
            JavaToken next = it.next();
            int length = next.getKind() == JavaToken.Kind.EOF.getKind() ? 0 : next.getText().length() - 1;
            next.setRange(Range.range(position, position.right(length)));
            position = next.getCategory().isEndOfLine() ? position.nextLine() : position.right(length + 1);
        }
    }

    @Override
    public boolean remove(Node node) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.imports.size(); i10++) {
            if (this.imports.get(i10) == node) {
                this.imports.remove(i10);
                return true;
            }
        }
        ModuleDeclaration moduleDeclaration = this.module;
        if (moduleDeclaration != null && node == moduleDeclaration) {
            removeModule();
            return true;
        }
        PackageDeclaration packageDeclaration = this.packageDeclaration;
        if (packageDeclaration != null && node == packageDeclaration) {
            removePackageDeclaration();
            return true;
        }
        for (int i11 = 0; i11 < this.types.size(); i11++) {
            if (this.types.get(i11) == node) {
                this.types.remove(i11);
                return true;
            }
        }
        return super.remove(node);
    }

    public CompilationUnit removeModule() {
        return setModule((ModuleDeclaration) null);
    }

    public CompilationUnit removePackageDeclaration() {
        return setPackageDeclaration((PackageDeclaration) null);
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.imports.size(); i10++) {
            if (this.imports.get(i10) == node) {
                this.imports.set(i10, (int) replacementNode);
                return true;
            }
        }
        ModuleDeclaration moduleDeclaration = this.module;
        if (moduleDeclaration != null && node == moduleDeclaration) {
            setModule((ModuleDeclaration) replacementNode);
            return true;
        }
        PackageDeclaration packageDeclaration = this.packageDeclaration;
        if (packageDeclaration != null && node == packageDeclaration) {
            setPackageDeclaration((PackageDeclaration) replacementNode);
            return true;
        }
        for (int i11 = 0; i11 < this.types.size(); i11++) {
            if (this.types.get(i11) == node) {
                this.types.set(i11, (int) replacementNode);
                return true;
            }
        }
        return super.replace(node, replacementNode);
    }

    public CompilationUnit setImport(int i10, ImportDeclaration imports) {
        getImports().set(i10, (int) imports);
        return this;
    }

    public CompilationUnit setImports(final NodeList<ImportDeclaration> imports) {
        Utils.assertNotNull(imports);
        NodeList<ImportDeclaration> nodeList = this.imports;
        if (imports == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.IMPORTS, nodeList, imports);
        NodeList<ImportDeclaration> nodeList2 = this.imports;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.imports = imports;
        setAsParentNodeOf(imports);
        return this;
    }

    public CompilationUnit setModule(final ModuleDeclaration module) {
        ModuleDeclaration moduleDeclaration = this.module;
        if (module == moduleDeclaration) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.MODULE, moduleDeclaration, module);
        ModuleDeclaration moduleDeclaration2 = this.module;
        if (moduleDeclaration2 != null) {
            moduleDeclaration2.setParentNode((Node) null);
        }
        this.module = module;
        setAsParentNodeOf(module);
        return this;
    }

    public CompilationUnit setPackageDeclaration(final PackageDeclaration packageDeclaration) {
        PackageDeclaration packageDeclaration2 = this.packageDeclaration;
        if (packageDeclaration == packageDeclaration2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.PACKAGE_DECLARATION, packageDeclaration2, packageDeclaration);
        PackageDeclaration packageDeclaration3 = this.packageDeclaration;
        if (packageDeclaration3 != null) {
            packageDeclaration3.setParentNode((Node) null);
        }
        this.packageDeclaration = packageDeclaration;
        setAsParentNodeOf(packageDeclaration);
        return this;
    }

    public CompilationUnit setStorage(Path path) {
        this.storage = new Storage(path);
        return this;
    }

    public CompilationUnit setType(int i10, TypeDeclaration<?> type) {
        NodeList nodeList = new NodeList();
        nodeList.addAll((NodeList) getTypes());
        getTypes().set(i10, (int) type);
        notifyPropertyChange(ObservableProperty.TYPES, nodeList, this.types);
        return this;
    }

    public CompilationUnit setTypes(final NodeList<TypeDeclaration<?>> types) {
        Utils.assertNotNull(types);
        NodeList<TypeDeclaration<?>> nodeList = this.types;
        if (types == nodeList) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPES, nodeList, types);
        NodeList<TypeDeclaration<?>> nodeList2 = this.types;
        if (nodeList2 != null) {
            nodeList2.setParentNode((Node) null);
        }
        this.types = types;
        setAsParentNodeOf(types);
        return this;
    }

    public CompilationUnit(String packageDeclaration) {
        this(null, new PackageDeclaration(new Name(packageDeclaration)), new NodeList(), new NodeList(), null);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (CompilationUnit) arg);
    }

    public AnnotationDeclaration addAnnotationDeclaration(String name, Modifier.Keyword... modifiers) {
        AnnotationDeclaration annotationDeclaration = new AnnotationDeclaration(Modifier.createModifierList(modifiers), name);
        getTypes().add((NodeList<TypeDeclaration<?>>) annotationDeclaration);
        return annotationDeclaration;
    }

    public ClassOrInterfaceDeclaration addClass(String name, Modifier.Keyword... modifiers) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = new ClassOrInterfaceDeclaration(Modifier.createModifierList(modifiers), false, name);
        getTypes().add((NodeList<TypeDeclaration<?>>) classOrInterfaceDeclaration);
        return classOrInterfaceDeclaration;
    }

    public EnumDeclaration addEnum(String name, Modifier.Keyword... modifiers) {
        EnumDeclaration enumDeclaration = new EnumDeclaration(Modifier.createModifierList(modifiers), name);
        getTypes().add((NodeList<TypeDeclaration<?>>) enumDeclaration);
        return enumDeclaration;
    }

    public ClassOrInterfaceDeclaration addInterface(String name, Modifier.Keyword... modifiers) {
        ClassOrInterfaceDeclaration classOrInterfaceDeclaration = new ClassOrInterfaceDeclaration(Modifier.createModifierList(modifiers), true, name);
        getTypes().add((NodeList<TypeDeclaration<?>>) classOrInterfaceDeclaration);
        return classOrInterfaceDeclaration;
    }

    @Override
    public CompilationUnitMetaModel getMetaModel() {
        return JavaParserMetaModel.compilationUnitMetaModel;
    }

    public CompilationUnit setStorage(Path path, Charset charset) {
        this.storage = new Storage(path, charset);
        return this;
    }

    @AllFieldsConstructor
    public CompilationUnit(PackageDeclaration packageDeclaration, NodeList<ImportDeclaration> imports, NodeList<TypeDeclaration<?>> types, ModuleDeclaration module) {
        this(null, packageDeclaration, imports, types, module);
    }

    @Override
    public CompilationUnit mo1220clone() {
        return (CompilationUnit) accept(new CloneVisitor(), (CloneVisitor) null);
    }

    public CompilationUnit(TokenRange tokenRange, PackageDeclaration packageDeclaration, NodeList<ImportDeclaration> imports, NodeList<TypeDeclaration<?>> types, ModuleDeclaration module) {
        super(tokenRange);
        setPackageDeclaration(packageDeclaration);
        setImports(imports);
        setTypes(types);
        setModule(module);
        customInitialization();
    }

    @Override
    public Printer getPrinter(PrinterConfiguration config) {
        Printer printer = getPrinter();
        if (printer instanceof ConfigurablePrinter) {
            ((ConfigurablePrinter) printer).setConfiguration(config);
        }
        printer(printer);
        return printer;
    }

    public ModuleDeclaration setModule(String name) {
        ModuleDeclaration moduleDeclaration = new ModuleDeclaration(StaticJavaParser.parseName(name), false);
        setModule(moduleDeclaration);
        return moduleDeclaration;
    }

    public CompilationUnit setPackageDeclaration(String name) {
        setPackageDeclaration(new PackageDeclaration(StaticJavaParser.parseName(name)));
        return this;
    }

    public CompilationUnit addImport(String name) {
        return addImport(name, false, false);
    }

    public CompilationUnit addImport(Class<?> clazz) {
        if (clazz.isArray()) {
            return addImport(clazz.getComponentType());
        }
        if (ClassUtils.isPrimitiveOrWrapper(clazz) || JAVA_LANG.equals(clazz.getPackage().getName())) {
            return this;
        }
        if (!clazz.isAnonymousClass() && !clazz.isLocalClass()) {
            return addImport(clazz.getCanonicalName());
        }
        throw new IllegalArgumentException(clazz.getName() + " is an anonymous or local class therefore it can't be added with addImport");
    }

    public CompilationUnit addImport(String name, boolean isStatic, boolean isAsterisk) {
        return name == null ? this : addImport(new ImportDeclaration(name, isStatic, isAsterisk));
    }
}
