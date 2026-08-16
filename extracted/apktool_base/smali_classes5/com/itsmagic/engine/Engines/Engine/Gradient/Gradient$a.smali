.class public Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient$a;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient$a;->a(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)I

    move-result p1

    return p1
.end method
