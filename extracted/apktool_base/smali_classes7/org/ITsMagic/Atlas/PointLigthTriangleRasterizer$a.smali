.class public Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:[F

.field public final d:[I

.field public final e:I


# direct methods
.method public constructor <init>([F[F[F[II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "positions",
            "colors",
            "params",
            "shadowFlags",
            "lightCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->a:[F

    iput-object p2, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->b:[F

    iput-object p3, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->c:[F

    iput-object p4, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->d:[I

    iput p5, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;->e:I

    return v0
.end method
