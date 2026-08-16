.class public final Lcom/jme3/collision/bih/BIHNode$BIHStackData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/collision/bih/BIHNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BIHStackData"
.end annotation


# instance fields
.field private final max:F

.field private final min:F

.field private final node:Lcom/jme3/collision/bih/BIHNode;


# direct methods
.method public constructor <init>(Lcom/jme3/collision/bih/BIHNode;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;

    iput p2, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->min:F

    iput p3, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->max:F

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;
    .locals 0

    iget-object p0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F
    .locals 0

    iget p0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->min:F

    return p0
.end method

.method public static synthetic access$200(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F
    .locals 0

    iget p0, p0, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->max:F

    return p0
.end method
