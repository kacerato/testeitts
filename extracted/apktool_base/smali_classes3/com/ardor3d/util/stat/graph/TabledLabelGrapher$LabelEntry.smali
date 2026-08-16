.class Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelEntry"
.end annotation


# instance fields
.field _type:Lcom/ardor3d/util/stat/StatType;

.field lineKey:Lcom/ardor3d/scenegraph/Line;

.field text:Lcom/ardor3d/ui/text/BasicText;

.field final synthetic this$0:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;

.field visited:Z


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;Lcom/ardor3d/util/stat/StatType;)V
    .locals 2

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->this$0:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->_type:Lcom/ardor3d/util/stat/StatType;

    sget-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Name:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ardor3d/util/stat/StatType;->getStatName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/ardor3d/util/stat/graph/AbstractStatGrapher;->getStringConfig(Lcom/ardor3d/util/stat/StatType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "label"

    invoke-static {p2, p1}, Lcom/ardor3d/ui/text/BasicText;->createDefaultTextLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/ardor3d/ui/text/BasicText;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$LabelEntry;->text:Lcom/ardor3d/ui/text/BasicText;

    return-void
.end method
