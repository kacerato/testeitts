.class public interface abstract Lorg/eclipse/jdt/core/IJavaElementDelta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDED:I = 0x1

.field public static final CHANGED:I = 0x4

.field public static final F_ADDED_TO_CLASSPATH:I = 0x40

.field public static final F_ANNOTATIONS:I = 0x400000

.field public static final F_ARCHIVE_CONTENT_CHANGED:I = 0x8000

.field public static final F_AST_AFFECTED:I = 0x80000

.field public static final F_CATEGORIES:I = 0x100000

.field public static final F_CHILDREN:I = 0x8

.field public static final F_CLASSPATH_CHANGED:I = 0x20000

.field public static final F_CLASSPATH_REORDER:I = 0x100

.field public static final F_CLOSED:I = 0x400

.field public static final F_CONTENT:I = 0x1

.field public static final F_FINE_GRAINED:I = 0x4000

.field public static final F_MODIFIERS:I = 0x2

.field public static final F_MOVED_FROM:I = 0x10

.field public static final F_MOVED_TO:I = 0x20

.field public static final F_OPENED:I = 0x200

.field public static final F_PRIMARY_RESOURCE:I = 0x40000

.field public static final F_PRIMARY_WORKING_COPY:I = 0x10000

.field public static final F_REMOVED_FROM_CLASSPATH:I = 0x80

.field public static final F_REORDER:I = 0x100

.field public static final F_RESOLVED_CLASSPATH_CHANGED:I = 0x200000

.field public static final F_SOURCEATTACHED:I = 0x1000

.field public static final F_SOURCEDETACHED:I = 0x2000

.field public static final F_SUPER_TYPES:I = 0x800

.field public static final REMOVED:I = 0x2


# virtual methods
.method public abstract getAddedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
.end method

.method public abstract getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
.end method

.method public abstract getAnnotationDeltas()[Lorg/eclipse/jdt/core/IJavaElementDelta;
.end method

.method public abstract getChangedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
.end method

.method public abstract getCompilationUnitAST()Lorg/eclipse/jdt/core/dom/CompilationUnit;
.end method

.method public abstract getElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getFlags()I
.end method

.method public abstract getKind()I
.end method

.method public abstract getMovedFromElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getMovedToElement()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public abstract getRemovedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
.end method

.method public abstract getResourceDeltas()[Lorg/eclipse/core/resources/IResourceDelta;
.end method
