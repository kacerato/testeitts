.class public final synthetic Lorg/eclipse/jdt/internal/compiler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->a(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)I

    move-result p1

    return p1
.end method
