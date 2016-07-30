class Addmoreexpfieldsinresume < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :excomp4, :string
    add_column :resumes, :excomp5, :string
    add_column :resumes, :excomp6, :string
    add_column :resumes, :expos4, :string
    add_column :resumes, :expos5, :string
    add_column :resumes, :expos6, :string

    add_column :resumes, :exstart4, :string
    add_column :resumes, :exstart5, :string
    add_column :resumes, :exstart6, :string
    add_column :resumes, :exend4, :string
    add_column :resumes, :exend5, :string
    add_column :resumes, :exend6, :string

    add_column :resumes, :expos41about, :string
    add_column :resumes, :expos42about, :string
    add_column :resumes, :expos43about, :string
    add_column :resumes, :expos44about, :string
    add_column :resumes, :expos45about, :string
    add_column :resumes, :expos51about, :string
    add_column :resumes, :expos52about, :string
    add_column :resumes, :expos53about, :string
    add_column :resumes, :expos54about, :string
    add_column :resumes, :expos55about, :string
    add_column :resumes, :expos61about, :string
    add_column :resumes, :expos62about, :string
    add_column :resumes, :expos63about, :string
    add_column :resumes, :expos64about, :string
    add_column :resumes, :expos65about, :string

    add_column :resumes, :excomploc1, :string
    add_column :resumes, :excomploc2, :string
    add_column :resumes, :excomploc3, :string
    add_column :resumes, :excomploc4, :string
    add_column :resumes, :excomploc5, :string
    add_column :resumes, :excomploc6, :string

    add_column :resumes, :intcomploc1, :string
    add_column :resumes, :intcomploc2, :string
    add_column :resumes, :intcomploc3, :string

  end
end
