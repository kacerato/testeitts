.class public final LSg/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:LTg/f;

.field public final c:J


# direct methods
.method public constructor <init>(ILTg/f;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LSg/a$d;->a:I

    iput-object p2, p0, LSg/a$d;->b:LTg/f;

    iput-wide p3, p0, LSg/a$d;->c:J

    return-void
.end method
