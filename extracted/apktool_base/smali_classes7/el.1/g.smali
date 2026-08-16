.class public abstract Lel/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lel/g$a;,
        Lel/g$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lel/g;->a:I

    iput p2, p0, Lel/g;->b:I

    return-void
.end method


# virtual methods
.method public abstract a([B)[S
.end method
