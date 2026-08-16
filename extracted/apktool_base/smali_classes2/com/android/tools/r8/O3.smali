.class public final synthetic Lcom/android/tools/r8/O3;
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
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/android/tools/r8/l0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/k0;

    move-result-object p1

    return-object p1
.end method
