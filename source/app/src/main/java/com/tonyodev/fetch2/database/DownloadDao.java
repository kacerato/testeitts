package com.tonyodev.fetch2.database;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.tonyodev.fetch2.Status;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Dao
public interface DownloadDao {
    @Delete
    void delete(@NotNull DownloadInfo downloadInfo);

    @Delete
    void delete(@NotNull List<? extends DownloadInfo> list);

    @Query("DELETE FROM requests")
    void deleteAll();

    @Query("SELECT * FROM requests WHERE _id = :id")
    @Nullable
    DownloadInfo get(int i10);

    @Query("SELECT * FROM requests")
    @NotNull
    List<DownloadInfo> get();

    @Query("SELECT * FROM requests WHERE _id IN (:ids)")
    @NotNull
    List<DownloadInfo> get(@NotNull List<Integer> list);

    @Query("SELECT DISTINCT _group from requests")
    @NotNull
    List<Integer> getAllGroupIds();

    @Query("SELECT * FROM requests WHERE _file = :file")
    @Nullable
    DownloadInfo getByFile(@NotNull String str);

    @Query("SELECT * FROM requests WHERE _group = :group")
    @NotNull
    List<DownloadInfo> getByGroup(int i10);

    @Query("SELECT * FROM requests WHERE _group = :group AND _status IN (:statuses)")
    @NotNull
    List<DownloadInfo> getByGroupWithStatus(int i10, @NotNull List<Status> list);

    @Query("SELECT * FROM requests WHERE _status = :status")
    @NotNull
    List<DownloadInfo> getByStatus(@NotNull Status status);

    @Query("SELECT * FROM requests WHERE _status IN (:statuses)")
    @NotNull
    List<DownloadInfo> getByStatus(@NotNull List<Status> list);

    @Query("SELECT * FROM requests WHERE _identifier = :identifier")
    @NotNull
    List<DownloadInfo> getDownloadsByRequestIdentifier(long j10);

    @Query("SELECT * FROM requests WHERE _tag = :tag")
    @NotNull
    List<DownloadInfo> getDownloadsByTag(@NotNull String str);

    @Query("SELECT * FROM requests WHERE _status = :status ORDER BY _priority DESC, _created ASC")
    @NotNull
    List<DownloadInfo> getPendingDownloadsSorted(@NotNull Status status);

    @Query("SELECT * FROM requests WHERE _status = :status ORDER BY _priority DESC, _created DESC")
    @NotNull
    List<DownloadInfo> getPendingDownloadsSortedDesc(@NotNull Status status);

    @Insert(onConflict = 3)
    long insert(@NotNull DownloadInfo downloadInfo);

    @Insert(onConflict = 3)
    @NotNull
    List<Long> insert(@NotNull List<? extends DownloadInfo> list);

    @Update(onConflict = 1)
    void update(@NotNull DownloadInfo downloadInfo);

    @Update(onConflict = 1)
    void update(@NotNull List<? extends DownloadInfo> list);
}
