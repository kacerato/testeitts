.class public Lorg/ITsMagic/Atlas/g$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/XAtlas$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/g$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/g$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/g$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g$a$a$a;->a:Lorg/ITsMagic/Atlas/g$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 1
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

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$a;->a:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/ITsMagic/Atlas/g$b;->a(IIFLjava/lang/String;)V

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

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a$a$a;->a:Lorg/ITsMagic/Atlas/g$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    invoke-interface {v0, p1}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    return-void
.end method
