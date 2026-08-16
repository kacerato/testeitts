.class public final synthetic Lcom/android/apksig/internal/apk/stamp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/apksig/internal/util/Pair;

    check-cast p2, Lcom/android/apksig/internal/util/Pair;

    invoke-static {p1, p2}, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner;->a(Lcom/android/apksig/internal/util/Pair;Lcom/android/apksig/internal/util/Pair;)I

    move-result p1

    return p1
.end method
