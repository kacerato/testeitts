.class public Lorg/ITsMagic/Atlas/LightDrawer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/LightDrawer;->i(Lorg/ITsMagic/Atlas/LightDrawer$e;)Lorg/ITsMagic/Atlas/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/LightDrawer$e;

.field public final synthetic b:Lorg/ITsMagic/Atlas/LightDrawer;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/LightDrawer;Lorg/ITsMagic/Atlas/LightDrawer$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/LightDrawer$b;->b:Lorg/ITsMagic/Atlas/LightDrawer;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/LightDrawer$b;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

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

    iget-object v0, p0, Lorg/ITsMagic/Atlas/LightDrawer$b;->a:Lorg/ITsMagic/Atlas/LightDrawer$e;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    return-void
.end method
