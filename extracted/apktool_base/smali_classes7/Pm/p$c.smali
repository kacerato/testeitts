.class public LPm/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPm/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LUm/t;

.field public final b:I


# direct methods
.method public constructor <init>(LUm/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPm/p$c;->a:LUm/t;

    iput p2, p0, LPm/p$c;->b:I

    return-void
.end method
