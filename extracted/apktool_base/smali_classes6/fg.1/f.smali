.class public final synthetic Lfg/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Leg/p;


# direct methods
.method public synthetic constructor <init>(Leg/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfg/f;->a:Leg/p;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lfg/f;->a:Leg/p;

    invoke-static {v0, p1, p2}, Lfg/g;->a(Leg/p;J)V

    return-void
.end method
