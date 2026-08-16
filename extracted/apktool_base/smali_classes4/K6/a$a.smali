.class public LK6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK6/a;->w(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:Z

.field public final synthetic k:LK6/a;


# direct methods
.method public constructor <init>(LK6/a;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fullScript",
            "val$fullLineText",
            "val$originalLineNumber",
            "val$cursorPosition",
            "val$loadedClassList",
            "val$textInterface",
            "val$className",
            "val$requestId",
            "val$isDeletingText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK6/a$a;->k:LK6/a;

    iput-object p2, p0, LK6/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, LK6/a$a;->c:Ljava/lang/String;

    iput p4, p0, LK6/a$a;->d:I

    iput p5, p0, LK6/a$a;->e:I

    iput-object p6, p0, LK6/a$a;->f:Ljava/util/List;

    iput-object p7, p0, LK6/a$a;->g:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iput-object p8, p0, LK6/a$a;->h:Ljava/lang/String;

    iput-wide p9, p0, LK6/a$a;->i:J

    iput-boolean p11, p0, LK6/a$a;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, LK6/a$a;->k:LK6/a;

    iget-object v1, p0, LK6/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, LK6/a$a;->c:Ljava/lang/String;

    iget v3, p0, LK6/a$a;->d:I

    iget v4, p0, LK6/a$a;->e:I

    iget-object v5, p0, LK6/a$a;->f:Ljava/util/List;

    iget-object v6, p0, LK6/a$a;->g:Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;

    iget-object v7, p0, LK6/a$a;->h:Ljava/lang/String;

    iget-wide v8, p0, LK6/a$a;->i:J

    iget-boolean v10, p0, LK6/a$a;->j:Z

    invoke-static/range {v0 .. v10}, LK6/a;->a(LK6/a;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
