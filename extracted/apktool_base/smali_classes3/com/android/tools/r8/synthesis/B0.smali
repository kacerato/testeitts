.class public final synthetic Lcom/android/tools/r8/synthesis/B0;
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

    check-cast p1, Lcom/android/tools/r8/synthesis/l;

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/l;->a()Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    return-object p1
.end method
