.class public final synthetic Lcom/android/tools/r8/graph/C9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/N2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/N2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/C9;->a:Lcom/android/tools/r8/graph/N2;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/C9;->a:Lcom/android/tools/r8/graph/N2;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/N2;->d(Lcom/android/tools/r8/graph/r0;)I

    move-result p1

    return p1
.end method
