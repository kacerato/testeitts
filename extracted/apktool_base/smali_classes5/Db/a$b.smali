.class public final LDb/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeId",
            "useCompression"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, LDb/a$b;->a:J

    .line 4
    iput-boolean p3, p0, LDb/a$b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(JZLDb/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LDb/a$b;-><init>(JZ)V

    return-void
.end method

.method public static synthetic a(LDb/a$b;)J
    .locals 2

    iget-wide v0, p0, LDb/a$b;->a:J

    return-wide v0
.end method

.method public static synthetic b(LDb/a$b;)Z
    .locals 0

    iget-boolean p0, p0, LDb/a$b;->b:Z

    return p0
.end method
