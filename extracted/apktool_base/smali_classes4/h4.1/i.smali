.class public Lh4/i;
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
    .locals 1
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

    iget-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileData:Ljava/lang/String;

    invoke-static {p1}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileData:Ljava/lang/String;

    sget-object p1, Lh4/a;->DONT_SAVE_DONT_NOTIFY:Lh4/a;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileData:Ljava/lang/String;

    sget-object p1, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileData:Ljava/lang/String;

    sget-object p1, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    return-object p1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileData:Ljava/lang/String;

    sget-object p1, Lh4/a;->SAVE_NOTIFY:Lh4/a;

    return-object p1

    :cond_3
    sget-object p1, Lh4/a;->SAVE_DATE_BUT_DONT_NOTIFY:Lh4/a;

    return-object p1
.end method
