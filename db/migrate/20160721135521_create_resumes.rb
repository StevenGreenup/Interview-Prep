class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :address
      t.string :phone
      t.string :school1
      t.string :school2
      t.string :school3
      t.string :cdd1
      t.string :cdd2
      t.string :cdd3
      t.string :excomp1
      t.string :excomp2
      t.string :excomp3
      t.string :expos1
      t.string :expos2
      t.string :expos3
      t.string :exstart1
      t.string :exstart2
      t.string :exstart3
      t.string :exend1
      t.string :exend2
      t.string :exend3
      t.string :intcom1
      t.string :intcomp2
      t.string :intcomp3
      t.string :intpos1
      t.string :intpos2
      t.string :intpos3
      t.string :intstart1
      t.string :intstart2
      t.string :intstart3
      t.string :cert1
      t.string :cert2
      t.string :cert3

      t.timestamps
    end
  end
end
