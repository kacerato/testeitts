.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->h()Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "LAc/b;",
        "LAc/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LAc/b;LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->i(LAc/b;LAc/b;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    check-cast p1, LAc/b;

    check-cast p2, LAc/b;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;->a(LAc/b;LAc/b;)V

    return-void
.end method
