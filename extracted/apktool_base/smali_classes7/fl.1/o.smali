.class public Lfl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfl/o$a;
    }
.end annotation


# instance fields
.field public a:Lfl/o$a;

.field public b:Lfl/l;

.field public c:Lfl/l;

.field public d:Lfl/l;

.field public e:Lfl/l;


# direct methods
.method public constructor <init>(Lfl/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfl/o$a;

    invoke-direct {v0}, Lfl/o$a;-><init>()V

    iput-object v0, p0, Lfl/o;->a:Lfl/o$a;

    iget p1, p1, Lfl/a;->a0:I

    new-array p1, p1, [I

    iput-object p1, v0, Lfl/o$a;->b:[I

    return-void
.end method
