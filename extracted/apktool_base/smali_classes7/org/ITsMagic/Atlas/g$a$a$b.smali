.class public Lorg/ITsMagic/Atlas/g$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/g$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LUg/k;

.field public final synthetic b:Lorg/ITsMagic/Atlas/g$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/g$a$a;LUg/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$buildedAtlas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->b:Lorg/ITsMagic/Atlas/g$a$a;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->a:LUg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->b:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->a:LUg/k;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->b:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float/2addr p3, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, p3

    mul-float/2addr v0, v1

    iget-object p3, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->b:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object p3, p3, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object p3, p3, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    invoke-interface {p3, p1, p2, v0, p4}, Lorg/ITsMagic/Atlas/g$b;->a(IIFLjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$b;->b:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    invoke-interface {v0, p1}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    return-void
.end method
