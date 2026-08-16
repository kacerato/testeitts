.class public final Lcom/android/tools/r8/internal/sh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->l:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->k:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->j:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->i:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->h:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->g:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->f:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->e:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->d:Lcom/android/tools/r8/internal/vh0;

    goto :goto_0

    :pswitch_9
    sget-object p1, Lcom/android/tools/r8/internal/vh0;->c:Lcom/android/tools/r8/internal/vh0;

    :goto_0
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/vh0;->m:Lcom/android/tools/r8/internal/vh0;

    :cond_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
