.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/e;->b:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/e;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->c(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
