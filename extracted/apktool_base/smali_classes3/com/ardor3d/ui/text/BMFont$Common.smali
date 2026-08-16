.class public Lcom/ardor3d/ui/text/BMFont$Common;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Common"
.end annotation


# instance fields
.field public alphaChnl:I

.field public base:I

.field public blueChnl:I

.field public greenChnl:I

.field public lineHeight:I

.field public packed:Z

.field public pages:I

.field public redChnl:I

.field public scaleH:I

.field public scaleW:I

.field final synthetic this$0:Lcom/ardor3d/ui/text/BMFont;


# direct methods
.method public constructor <init>(Lcom/ardor3d/ui/text/BMFont;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMFont$Common;->this$0:Lcom/ardor3d/ui/text/BMFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
