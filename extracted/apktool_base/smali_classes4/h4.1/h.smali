.class public Lh4/h;
.super Lh4/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    invoke-direct {p0, p1}, Lh4/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;)Lh4/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "data"
        }
    .end annotation

    iget-wide v0, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileSizeBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileSizeBytes:J

    sget-object p1, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    return-object p1

    :cond_0
    sget-object p1, Lh4/a;->SAVE_DATE_BUT_DONT_NOTIFY:Lh4/a;

    return-object p1
.end method
