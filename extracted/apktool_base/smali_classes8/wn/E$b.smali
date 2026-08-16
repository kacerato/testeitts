.class public Lwn/E$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lwn/E$b;->a:[I

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lwn/E$b;->b:[I

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lwn/E$b;->c:[I

    return-void
.end method

.method public synthetic constructor <init>(Lwn/E$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lwn/E$b;-><init>()V

    return-void
.end method
