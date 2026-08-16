.class public final synthetic Lorg/eclipse/jdt/internal/codeassist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field public final synthetic c:[C


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/a;->b:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/a;->c:[C

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/a;->b:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/a;->c:[C

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->a(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;[CLjava/lang/String;)Z

    move-result p1

    return p1
.end method
