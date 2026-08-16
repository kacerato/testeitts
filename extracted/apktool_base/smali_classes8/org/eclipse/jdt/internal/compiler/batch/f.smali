.class public final synthetic Lorg/eclipse/jdt/internal/compiler/batch/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/parser/Parser;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/f;->b:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/f;->b:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->a(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
