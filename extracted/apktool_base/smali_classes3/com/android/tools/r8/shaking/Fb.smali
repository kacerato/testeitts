.class public final synthetic Lcom/android/tools/r8/shaking/Fb;
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

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/shaking/W4;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/g1;)I

    move-result p1

    return p1
.end method
