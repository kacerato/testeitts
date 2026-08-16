.class public final synthetic Lcom/android/tools/r8/graph/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/qg;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/qg;->b:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Z

    move-result p1

    return p1
.end method
