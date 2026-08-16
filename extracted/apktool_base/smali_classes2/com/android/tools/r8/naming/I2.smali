.class public final synthetic Lcom/android/tools/r8/naming/I2;
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

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-static {p1}, Lcom/android/tools/r8/naming/a0;->a(Lcom/android/tools/r8/graph/L2;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
