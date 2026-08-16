.class public LRc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, LRc/a$a;->a:D

    .line 3
    iput-wide p3, p0, LRc/a$a;->b:D

    .line 4
    iput-wide p5, p0, LRc/a$a;->c:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, LRc/a$a;->a:D

    .line 7
    iput-wide p3, p0, LRc/a$a;->b:D

    .line 8
    iput-wide p5, p0, LRc/a$a;->c:D

    .line 9
    iput-wide p7, p0, LRc/a$a;->d:D

    return-void
.end method
