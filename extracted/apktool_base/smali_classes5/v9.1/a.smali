.class public Lv9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field public final b:Lcom/jme3/math/Transform;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shape",
            "bulletTransform"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9/a;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p2, p0, Lv9/a;->b:Lcom/jme3/math/Transform;

    return-void
.end method


# virtual methods
.method public a()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lv9/a;->b:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public b()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Lv9/a;->a:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method
