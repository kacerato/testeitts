.class public final synthetic Lcom/android/tools/r8/graph/Zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/X5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/X5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method
