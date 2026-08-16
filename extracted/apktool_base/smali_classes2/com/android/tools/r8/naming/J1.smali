.class public final synthetic Lcom/android/tools/r8/naming/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/J;

.field public final synthetic c:Lcom/android/tools/r8/graph/H0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/J1;->b:Lcom/android/tools/r8/naming/J;

    iput-object p2, p0, Lcom/android/tools/r8/naming/J1;->c:Lcom/android/tools/r8/graph/H0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/J1;->b:Lcom/android/tools/r8/naming/J;

    iget-object v1, p0, Lcom/android/tools/r8/naming/J1;->c:Lcom/android/tools/r8/graph/H0;

    check-cast p1, Lcom/android/tools/r8/naming/J;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/J;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
