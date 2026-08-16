.class public abstract Lbl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/q$a;,
        Lbl/q$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbl/q;->a:I

    iput p2, p0, Lbl/q;->b:I

    return-void
.end method


# virtual methods
.method public abstract a([BS)V
.end method

.method public abstract b([BII)V
.end method

.method public abstract c([BS)V
.end method

.method public abstract d([BII)V
.end method
