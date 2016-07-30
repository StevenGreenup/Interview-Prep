class Addfieldstoresume < ActiveRecord::Migration[5.0]
  def change

    add_column :resumes, :addresscity, :string
    add_column :resumes, :addressstate, :string
    add_column :resumes, :addresszip, :string
    add_column :resumes, :website, :string
    add_column :resumes, :linked, :string


    add_column :resumes, :expos11about, :string
    add_column :resumes, :expos12about, :string
    add_column :resumes, :expos13about, :string
    add_column :resumes, :expos14about, :string
    add_column :resumes, :expos15about, :string
    add_column :resumes, :expos21about, :string
    add_column :resumes, :expos22about, :string
    add_column :resumes, :expos23about, :string
    add_column :resumes, :expos24about, :string
    add_column :resumes, :expos25about, :string
    add_column :resumes, :expos31about, :string
    add_column :resumes, :expos32about, :string
    add_column :resumes, :expos33about, :string
    add_column :resumes, :expos34about, :string
    add_column :resumes, :expos35about, :string
    add_column :resumes, :intcomp11about, :string
    add_column :resumes, :intcomp12about, :string
    add_column :resumes, :intcomp13about, :string
    add_column :resumes, :intcomp14about, :string
    add_column :resumes, :intcomp15about, :string
    add_column :resumes, :intcomp21about, :string
    add_column :resumes, :intcomp22about, :string
    add_column :resumes, :intcomp23about, :string
    add_column :resumes, :intcomp24about, :string
    add_column :resumes, :intcomp25about, :string
    add_column :resumes, :intcomp31about, :string
    add_column :resumes, :intcomp32about, :string
    add_column :resumes, :intcomp33about, :string
    add_column :resumes, :intcomp34about, :string
    add_column :resumes, :intcomp35about, :string

  end
end
