.class public Lcom/ardor3d/ui/text/BMFont$Char;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Char"
.end annotation


# instance fields
.field public chnl:I

.field public height:I

.field public id:I

.field public page:I

.field final synthetic this$0:Lcom/ardor3d/ui/text/BMFont;

.field public width:I

.field public x:I

.field public xadvance:I

.field public xoffset:I

.field public y:I

.field public yoffset:I


# direct methods
.method public constructor <init>(Lcom/ardor3d/ui/text/BMFont;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$Char;->this$0:Lcom/ardor3d/ui/text/BMFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
