.class Lcom/jme3/util/struct/StructUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/struct/StructUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jme3/util/struct/StructField<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/util/struct/StructField;Lcom/jme3/util/struct/StructField;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/struct/StructField<",
            "*>;",
            "Lcom/jme3/util/struct/StructField<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/jme3/util/struct/StructField;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/jme3/util/struct/StructField;->getPosition()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/util/struct/StructField;

    check-cast p2, Lcom/jme3/util/struct/StructField;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/util/struct/StructUtils$1;->compare(Lcom/jme3/util/struct/StructField;Lcom/jme3/util/struct/StructField;)I

    move-result p1

    return p1
.end method
