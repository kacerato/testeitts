.class public final Lcom/tonyodev/fetch2core/Reason$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Reason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/Reason$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/tonyodev/fetch2core/Reason;
    .locals 0
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->NOT_SPECIFIED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->REPORTING:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->OBSERVER_ATTACHED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_BLOCK_UPDATED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_DELETED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_REMOVED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_CANCELLED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_RESUMED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PAUSED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ERROR:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_9
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_COMPLETED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_PROGRESS_CHANGED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_b
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_WAITING_ON_NETWORK:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_c
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_STARTED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_d
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_QUEUED:Lcom/tonyodev/fetch2core/Reason;

    goto :goto_0

    :pswitch_e
    sget-object p1, Lcom/tonyodev/fetch2core/Reason;->DOWNLOAD_ADDED:Lcom/tonyodev/fetch2core/Reason;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
