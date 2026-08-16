.class public Lcom/ardor3d/ui/text/BMFont$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field public aa:Z

.field public bold:Z

.field public charset:Ljava/lang/String;

.field public face:Ljava/lang/String;

.field public italic:Z

.field public outline:I

.field public padding:[I

.field public size:I

.field public smooth:Z

.field public spacing:[I

.field public stretchH:I

.field final synthetic this$0:Lcom/ardor3d/ui/text/BMFont;

.field public unicode:Z


# direct methods
.method public constructor <init>(Lcom/ardor3d/ui/text/BMFont;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$Info;->this$0:Lcom/ardor3d/ui/text/BMFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
